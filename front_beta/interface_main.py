import flet as ft


class Display(ft.Container):
    def __init__(self, matrix):
        super().__init__()
        self.matrix = matrix
        self.height = len(matrix)
        self.width = len(matrix[0])
        self.cols = [ft.Container(width=30, height=30, bgcolor=ft.colors.BLACK, margin=0, padding=0)] * self.width
        self.displayMatrix = [ft.Row(controls=self.cols, spacing=0)] * self.height
        self.content = ft.Column(controls=self.displayMatrix, spacing=0)
        self.bgcolor = ft.colors.BLACK
        self.width = 300
        self.padding = 0
        self.margin = 0



    def setmatrix(self, matrix):
        self.matrix = matrix

    def updatedisplay(self):
        for i in range(1):
            print(i)
            for j in range(10):
                print(j)
                if self.matrix[i][j] == 0:
                    self.displayMatrix[i].controls[j].bgcolor = ft.colors.BLACK

                else:
                    self.displayMatrix[i].controls[j].bgcolor = ft.colors.WHITE


def main(page: ft.Page) -> None:
    page.title = "tetris"
    page.fonts = {
        "OpenSans": "fonts/OpenSans-ExtraBold.ttf"
    }
    page.theme_mode = ft.ThemeMode.DARK
    page.theme = ft.Theme(font_family="OpenSans")
    page.window_width = 350
    page.window_height = 725
    page.horizontal_alignment = ft.CrossAxisAlignment.CENTER
    page.vertical_alignment = ft.MainAxisAlignment.CENTER
    page.appbar = ft.AppBar(bgcolor=ft.colors.GREEN_900, title=ft.Text("Tetris", size=30))
    matrix = [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0]] * 20
    print(matrix)
    display = Display(matrix)
    matrix[1][2] = 1
    page.add(display)
    page.update()
    display.setmatrix(matrix)
    display.updatedisplay()
    page.add(display)
    page.update()



if __name__ == "__main__":
    ft.app(main)
