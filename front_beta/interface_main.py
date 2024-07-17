import flet as ft


class Display(ft.Column):
    def __init__(self, matrix):
        super().__init__()
        self.matrix = matrix
        self.height = len(matrix)
        self.width = len(matrix[0])

        self.controls = [ft.Row(controls= [ft.Container(width=30, height=30, bgcolor=ft.colors.BLACK, margin=0, padding=0)  if matrix[j,i] == 0 else ft.Container(width=30, height=30, bgcolor=ft.colors.WHITE, margin=0, padding=0) for i in  range(self.width)], spacing=0) for j in range(self.height)]
        self.spacing = 0

def main(page: ft.Page) -> None:
    page.title = "tetris"
    page.fonts = {
        "OpenSans": "fonts/OpenSans-ExtraBold.ttf"
    }
    page.theme_mode = ft.ThemeMode.DARK
    page.theme = ft.Theme(font_family="OpenSans")
    page.window_width = 350
    page.window_height = 725

    page.appbar = ft.AppBar(bgcolor=ft.colors.GREEN_900, title=ft.Text("Tetris", size=30))
    matrix = [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0]] * 20
    print(matrix)
    display = ft.Container(Display(matrix), margin = 0, padding = 0)
    matrix[1][2] = 1
    page.add(display)
    page.update()
    display.content = Display(matrix)
    page.add(display)
    page.update()


if __name__ == "__main__":
    ft.app(main)
