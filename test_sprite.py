import pygame
from sys import exit
from random import randint

# 定义窗口分辨率
SCREEN_WIDTH = 1180
SCREEN_HEIGHT = 700

# Player类
class Player(pygame.sprite.Sprite):
    """docstring for Player"""
    def __init__(self, initial_position):
        pygame.sprite.Sprite.__init__(self)
        self.image = pygame.Surface([10, 10])
        self.image.fill((0, 0, 0))
        self.rect = self.image.get_rect()
        self.rect.topleft = initial_position
        self.speed = 6

    def update(self):
        self.rect.left += self.speed
        if self.rect.left > SCREEN_WIDTH:
            self.kill()

pygame.init()
clock = pygame.time.Clock()
screen = pygame.display.set_mode([SCREEN_WIDTH, SCREEN_HEIGHT])

# 建立精灵组
group = pygame.sprite.Group()

while True:
    clock.tick(60)
    print(len(group.sprites()))

    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            exit()

    # 绘制背景
    screen.fill((255, 255, 255))

    # 不断往精灵组中添加精灵
    group.add(Player((randint(0, SCREEN_WIDTH), randint(0, SCREEN_HEIGHT))))

    # 显示精灵
    group.update()
    group.draw(screen)

    pygame.display.update()