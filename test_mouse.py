import pygame
from sys import exit

# 定义窗口分辨率
SCREEN_WIDTH = 1180
SCREEN_HEIGHT = 700

class Hero(pygame.sprite.Sprite):
    """docstring for Hero"""
    def __init__(self, hero_surface, hero_pos):
        pygame.sprite.Sprite.__init__(self)
        self.image = hero_surface
        self.rect = self.image.get_rect()
        self.rect.topleft = hero_pos
        self.speed = 3
        self.bullets = pygame.sprite.Group()

    def move(self, offset):
        offset_x = self.rect.left + offset[pygame.K_RIGHT] - offset[pygame.K_LEFT]
        offset_y = self.rect.top + offset[pygame.K_DOWN] - offset[pygame.K_UP]

        if offset_x < 0:
            self.rect.left = 0
        elif offset_x > SCREEN_WIDTH - self.rect.width:
            self.rect.left = SCREEN_WIDTH - self.rect.width
        else:
            self.rect.left = offset_x

        if offset_y < 0:
            self.rect.top = 0
        elif offset_y > SCREEN_HEIGHT - self.rect.height:
            self.rect.top = SCREEN_HEIGHT - self.rect.height
        else:
            self.rect.top = offset_y


# 计数
offset = {pygame.K_LEFT: 0, pygame.K_RIGHT: 0,
          pygame.K_UP: 0, pygame.K_DOWN: 0}

# 限制帧数
clock = pygame.time.Clock()

# 初始化游戏
pygame.init()

screen = pygame.display.set_mode([SCREEN_WIDTH, SCREEN_HEIGHT])
pygame.display.set_caption('This is a pygame-program')

# 载入背景图
background = pygame.image.load('image/img01.jpg')

# 角色图
hero_img = pygame.image.load('image/img02.jpg')
hero_rect = pygame.Rect(0, 0, 49, 49)
hero_surface = hero_img.subsurface(hero_rect)
hero_pos = [600, 400]
hero = Hero(hero_surface, hero_pos)

hero_img2 = pygame.image.load('image/img03.jpg')
hero_surface2 = hero_img2.subsurface(hero_rect)
hero2 = Hero(hero_surface2, hero_pos)

# 事件循环
while True:
    # 限制帧数
    clock.tick(60)

    # 绘制背景
    screen.blit(background, (0, 0))
    screen.blit(hero.image, hero.rect)

    # 更新屏幕
    pygame.display.update()

    # 游戏退出
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            exit()

        if event.type == pygame.KEYDOWN:
            if event.key in offset:
                offset[event.key] = hero.speed
        elif event.type == pygame.KEYUP:
            if event.key in offset:
                offset[event.key] = 0

        if event.type == pygame.MOUSEBUTTONDOWN and pygame.mouse.get_pressed() == (1, 0, 0):
            if hero.rect.collidepoint(pygame.mouse.get_pos()):
                hero, hero2 = hero2, hero

    hero.move(offset)