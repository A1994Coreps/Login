import PySimpleGUI as sg

layuot = [
    [sg. Text ('usuário')],
    [sg. Input (key='usuario')],
    [sg. Text ('senha')],
    [sg. Input (key='senha',password_char='*')], #,password_char='*')], essa função e para esconder a senha
    [sg. Button ('Entrar')],
    [sg. Text ('',key='mensagem')],
]

janela = sg.Window('Login',layout=layuot)

while True:
    event, values = janela.read()
    if event == sg.WINDOW_CLOSED:
        break
    if event == 'Entrar':
        senha_correta = '200413'
        usuario_correto = 'aneto'
        usuario = values['usuario']
        senha = values['senha']
        if senha == senha_correta and  usuario == usuario_correto:
            janela['mensagem'].update('Longin feito com sucesso')
        else:
            janela['mensagem'].update('Senha ou usuário incorreto')
