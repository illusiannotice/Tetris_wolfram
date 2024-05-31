import flet as ft


class Display(ft.Container):
    def __init__(self, matrix):
        super().__init__()
        self.matrix = matrix
        self.height = len(matrix)
        self.width = len(matrix[0])
        self.cols = [ft.Container(width=30, height=30, bgcolor=ft.colors.BLACK, margin=0, padding=0)] * self.width
        self.display = ft.Container(
            content=ft.Column(
                controls=[ft.Row(
                    controls=self.cols,
                    spacing=0)] * self.height,
                spacing=0),
            bgcolor=ft.colors.BLACK,
            width=300,

        )


def main(page: ft.Page) -> None:
    page.title = "tetris"
    page.fonts = {
        "OpenSans": "fonts/OpenSans-ExtraBold.ttf"
    }
    page.theme_mode = ft.ThemeMode.DARK
    page.theme = ft.Theme(font_family="OpenSans")
    page.window_width = 300
    page.window_width = 600
    page.horizontal_alignment = ft.CrossAxisAlignment.CENTER
    page.vertical_alignment = ft.MainAxisAlignment.CENTER
    page.appbar = ft.AppBar(bgcolor=ft.colors.GREEN_900, title=ft.Text("Tetris", size=30))

    display = ft.Container(
        content=ft.Column(
            controls=[ft.Row(
                controls=[ft.Container(width=30, height=30, bgcolor=ft.colors.BLACK, margin=0, padding=0)] * 10,
                spacing=0)] * 20,
            spacing=0),
        bgcolor=ft.colors.BLACK,
        width=300,

    )
    score_display = ft.Container
    page.add(display)
    page.update()


if __name__ == "__main__":
    ft.app(main)
