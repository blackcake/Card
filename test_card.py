import pygame
import psycopg2
import uuid
from sys import exit

# 定义窗口分辨率
SCREEN_WIDTH = 1180
SCREEN_HEIGHT = 700
DBCONN = "dbname=gamedb user=game password=game host=localhost port=5432"


def show_text(text):
    if isinstance(text, (int, float)):
        text = str(value).encode('unicode_escape')
    font = pygame.font.SysFont('Microsoft YaHei Mono', 20)
    text_fmt = font.render(text, 1, (0, 0, 0))
    return text_fmt


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
        sql = 'insert into "playing"("userid", "card_guid", "order") values (\'%s\', \'%s\', %d);' % (userid, guid, order)
        cursor.execute(sql)
        conn.commit()
        cursor.close()
        conn.close()


def card_random(DBCONN, pos):
    conn = psycopg2.connect(DBCONN)
    cursor = conn.cursor()
    sql = 'SELECT image, name, season, card_guid FROM "card" order by random() limit 1;'
    cursor.execute(sql)
    row = cursor.fetchone()
    cursor.close()
    conn.close()
    card = Card(pos, *row)
    return card


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
card = card_random(DBCONN, [600, 400])
value = 0

while True:
    clock.tick(60)

    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            exit()
        if event.type == pygame.MOUSEBUTTONDOWN and pygame.mouse.get_pressed() == (1, 0, 0):
            if card.rect.collidepoint(pygame.mouse.get_pos()):
                card.write_pg(userid)
                card = card_random(DBCONN, [600, 400])
                value = get_value(DBCONN)

    screen.fill((255, 255, 255))
    screen.blit(card.image, card.rect)
    screen.blit(card.show_property(), [100, 100])
    screen.blit(show_text(value), [100, 200])
    pygame.display.update()
