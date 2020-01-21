from flask import request, make_response, redirect, render_template, session, url_for, flash

from app import create_app
import unittest

from app.forms import LoginForm

app = create_app()

todos = ['Comprar cafe', 'Enviar solicitud de compra', 'Entregar video a productor']

@app.cli.command()
def test():
    tests = unittest.TestLoader().discover('tests')
    unittest.TextTestRunner().run(tests)


@app.errorhandler(404)
def not_found(error):
    return render_template('404.html', error=error)

@app.errorhandler(500)
def not_found(error):
    return render_template('500.html', error=error)

@app.route('/')
def index():
    user_ip = request.remote_addr

    ''' Redirecciono a la ruta hello '''
    response = make_response(redirect('/hello'))
    ''' Asigno la ip a una cookie '''
    '''response.set_cookie('user_ip', user_ip)'''
    session['user_ip'] = user_ip

    return response

@app.route('/hello', methods=['GET', 'POST'])
def hello():
    ''' Obtener ip del usuario '''
    '''user_ip = request.cookies.get('user_ip')'''
    user_ip = session.get('user_ip')
    login_form = LoginForm()
    username = session.get('username')

    
    ''' Creo el diccionario context  para enviar al template las variables'''
    context = {
        'user_ip': user_ip, 
        'todos': todos,
        'login_form': login_form,
        'username': username
    }

    if login_form.validate_on_submit():
        username = login_form.username.data
        session['username'] = username

        flash('Nombre de usuario registrado con éxito')
        return redirect(url_for('index'))


    ''' Retorno un template que se encuentra en la carpeta /templates 
        y  expando el diccionario para que en el template pueda utilizar las variables
        de manera simple￼
    '''
    return render_template('hello.html', **context)
