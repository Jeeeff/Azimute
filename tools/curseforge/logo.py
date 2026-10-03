"""Gera o logo do Azimute (rosa dos ventos) — arte própria, sem nada da Blizzard."""
import math
from PIL import Image, ImageDraw, ImageFilter

S = 1024
img = Image.new("RGBA", (S, S), (0, 0, 0, 0))
d = ImageDraw.Draw(img)
c = S / 2
# fundo: círculo escuro com leve gradiente radial
for r in range(int(c), 0, -2):
    t = r / c
    col = (int(14 + 20 * (1 - t)), int(18 + 26 * (1 - t)), int(32 + 40 * (1 - t)), 255)
    d.ellipse([c - r, c - r, c + r, c + r], fill=col)
GOLD, DARKGOLD, LIGHT = (222, 176, 72), (150, 110, 38), (250, 226, 160)
# anéis
for w, rad in ((14, 470), (5, 430), (3, 300)):
    d.ellipse([c - rad, c - rad, c + rad, c + rad], outline=GOLD, width=w)
# marcas de grau
for i in range(72):
    a = math.radians(i * 5)
    r1 = 430 if i % 2 else 410
    d.line([(c + r1 * math.sin(a), c - r1 * math.cos(a)), (c + 470 * math.sin(a), c - 470 * math.cos(a))], fill=DARKGOLD, width=4)
def point(angle, length, width, light, dark):
    a = math.radians(angle)
    tip = (c + length * math.sin(a), c - length * math.cos(a))
    l = (c + width * math.sin(a - math.pi / 2), c - width * math.cos(a - math.pi / 2))
    r = (c + width * math.sin(a + math.pi / 2), c - width * math.cos(a + math.pi / 2))
    d.polygon([(c, c), tip, l], fill=light)
    d.polygon([(c, c), tip, r], fill=dark)
for ang in (45, 135, 225, 315):
    point(ang, 250, 46, (170, 180, 200), (110, 118, 140))
for ang in (90, 180, 270):
    point(ang, 390, 70, LIGHT, DARKGOLD)
# norte destacado (o "azimute" é medido a partir do norte)
point(0, 420, 74, (255, 120, 80), (190, 60, 40))
d.ellipse([c - 34, c - 34, c + 34, c + 34], fill=GOLD, outline=LIGHT, width=6)
img = img.filter(ImageFilter.SMOOTH)
img.resize((400, 400), Image.LANCZOS).save("logo_400.png")
img.resize((64, 64), Image.LANCZOS).save("logo_64.png")
print("ok")
