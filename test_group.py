'''
现在卡池还是手动加卡，点击卡后该卡会从卡池移出，并把信息打印在左上角
'''
import pygame
import psycopg2
import uuid
from sys import exit

# 定义窗口分辨率
SCREEN_WIDTH = 1180
SCREEN_HEIGHT = 700
DBCONN = "dbname=gamedb user=game password=game host=localhost port=5432"
IMAGE_WIDTH = 166


def show_text(text):
    if isinstance(text, (int, float)):
        text = str(text).encode('unicode_escape')
    font = pygame.font.SysFont('Microsoft YaHei Mono', 20)
    text_fmt = font.render(text, 1, (0, 0, 0))
    return text_fmt


class CardPool(pygame.sprite.Sprite):
    """docstring for CardPool"""
    def __init__(self, left, top):
        pygame.sprite.Sprite.__init__(self)
        self.cards = pygame.sprite.Group()
        self.value = 0
        self.top = top
        self.left = left
        self.amount = 5
        self.text = []
        # self.cards_all = 
        for i in range(self.amount):
            self.cards.add(get_card([self.left + i*IMAGE_WIDTH, self.top]))
    
    def pick(self, pos):
        flag = False
        for card in self.cards.sprites():
            if card.rect.collidepoint(pygame.mouse.get_pos()):
                flag = True
                card.write_pg(userid)
                self.text.append(card.show_property())
                self.cards.remove(card)
                self.value = get_value(DBCONN)
        if flag:
            for card in self.cards.sprites():
                if card.rect.left > pygame.mouse.get_pos()[0]:
                    card.move()
            self.cards.add(get_card([self.left + (self.amount-1)*IMAGE_WIDTH, self.top]))


class Card(pygame.sprite.Sprite):
    """docstring for Card"""
    order = 0
    def __init__(self, pos, image, name, season, guid):
        pygame.sprite.Sprite.__init__(self)
        card_image = pygame.image.load(image)
        self.rect = pygame.Rect(0, 0, 166, 221)
        self.image = card_image.subsurface(self.rect)
        self.rect.topleft = pos
        self.name = name
        self.season = season
        self.__guid = guid
        self.order = Card.order
        Card.order += 1

    def show_property(self):
        text = '名称: %s, 季节: %s, 顺序: %d' % (self.name, self.season, self.order)
        return show_text(text)

    def write_pg(self, userid):
        guid, order = self.__guid, self.order
        conn = psycopg2.connect(DBCONN)
        cursor = conn.cursor()
        sql = 'insert into "playing"("userid", "card_guid", "order") ' \
              'values (\'%s\', \'%s\', %d);' % (userid, guid, order)
        cursor.execute(sql)
        conn.commit()
        cursor.close()
        conn.close()

    def remove(self):
        self.kill()

    def move(self):
        self.rect.left = self.rect.left - self.rect.width


def card_random(DBCONN):
    conn = psycopg2.connect(DBCONN)
    cursor = conn.cursor()
    sql = 'SELECT image, name, season, card_guid FROM "card" order by random() limit 1;'
    cursor.execute(sql)
    for row in cursor:
        yield row
    cursor.close()
    conn.close()


def get_card(pos):
    row = next(card_random(DBCONN))
    yield Card(pos, *row)


def clear_playing(DBCONN):
    conn = psycopg2.connect(DBCONN)
    cursor = conn.cursor()
    sql = 'truncate "playing";'
    cursor.execute(sql)
    conn.commit()
    cursor.close()
    conn.close()


def get_value(DBCONN):
    conn = psycopg2.connect(DBCONN)
    cursor = conn.cursor()
    sql = 'select sum(value) from (SELECT sum(b.value) as value from "playing" a ' \
          'inner join "card" b on a.card_guid=b.card_guid union SELECT sum(value) ' \
          'as value from "v_group_finshed") as c'
    cursor.execute(sql)
    value = int(cursor.fetchone()[0])
    cursor.close()
    conn.close()
    return value


pygame.init()
clock = pygame.time.Clock()
screen = pygame.display.set_mode([SCREEN_WIDTH, SCREEN_HEIGHT])

# 数据库相关
userid = str(uuid.uuid4())
clear_playing(DBCONN)

# 一张卡
card_pool = CardPool(200, 400)
'''
group.add(card_random(DBCONN, [200, 400]))
group.add(card_random(DBCONN, [400, 400]))
'''

while True:
    clock.tick(60)

    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            exit()
        
        if event.type == pygame.MOUSEBUTTONDOWN and pygame.mouse.get_pressed() == (1, 0, 0):
            card_pool.pick(pygame.mouse.get_pos())
        
    screen.fill((255, 255, 255))
    card_pool.update()
    card_pool.cards.draw(screen)
    if card_pool.text:
        screen.blit(card_pool.text[-1], [100, 100])
    screen.blit(show_text(card_pool.value), [100, 200])
    '''
    screen.blit(card.show_property(), [100, 100])
    screen.blit(show_text(value), [100, 200])
    '''
    pygame.display.update()
