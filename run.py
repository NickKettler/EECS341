import configparser
from flask import Flask, render_template, request
import mysql.connector

# Reads configuration from file.
config = configparser.ConfigParser()
config.read('config.ini')

# Sets up application server.
app = Flask(__name__)

# Fetches data from the database.
def sql_query(sql):
    db = mysql.connector.connect(**config['mysql.connector'])
    cursor = db.cursor()
    cursor.execute(sql)
    result = cursor.fetchall()
    cursor.close()
    db.close()
    return result

# Excecutes sql commands from string
def sql_execute(sql):
    db = mysql.connector.connect(**config['mysql.connector'])
    cursor = db.cursor()
    cursor.execute(sql)
    db.commit()
    cursor.close()
    db.close()

# We ran into an issue of connecting the angular front-end files to display. 
#@app.route('/')
#def template_response():
#    return render_template('app.component.html')

# Creates and sends SQL query for specified brew
@app.route('/brew', methods=['GET', 'POST'])
def template_response_with_data():
    final_query = 'SELECT brew_name FROM brews WHERE' 
    add_to_query = ''
    print(request.form)

    if "chosen_brew_type" in request.form:
        brew_type = int(request.form["chosen_brew_type"])
        if len(chosen_brew_type)!=0:
            add_to_query = " brew_type = {brew_type} AND".format(brew_type=brew_type)
            final_query = final_query + add_to_query    

    if "being_sold" in request.form:
        being_sold = int(request.form["being_sold"])
        if len(being_sold)!=0:
            add_to_query = " being_sold = {being_sold} AND".format(being_sold=being_sold)
            final_query = final_query + add_to_query    

    if "brew_name" in request.form:
        brew_name = int(request.form["brew_name"])
        if len(brew_name)!=0:
            add_to_query = " brew_name = {brew_name}".format(brew_name=brew_name)
            final_query = final_query + add_to_query

    add_to_query = ';'
    template_data = {}
    matching_brews = sql_query(final_query)
    template_data['matching_brews'] = matching_brews
    return render_template('brew.component.html', template_data=template_data)

# Creates and sends SQL query for specified brewery
@app.route('/brewery', methods=['GET', 'POST'])
def template_response_with_data():
    final_query = 'SELECT brewery_name FROM brewery, brews WHERE' 
    add_to_query = ''
    print(request.form)

    if "neighborhood" in request.form:
        neighborhood = int(request.form["neighborhood"])
        if len(neighborhood)!=0:
            add_to_query = " neighborhood = {neighborhood} AND".format(neighborhood=neighborhood)
            final_query = final_query + add_to_query    

    if "sells_brew" in request.form:
        being_sold = int(request.form["being_sold"])
        if len(being_sold)!=0:
            add_to_query = " being_sold = {being_sold}".format(being_sold=being_sold)
            final_query = final_query + add_to_query    

    add_to_query = ';'
    template_data = {}
    matching_breweries = sql_query(final_query)
    template_data['matching_breweries'] = matching_breweries
    return render_template('brewery.component.html', template_data=template_data)

# Creates and sends SQL query for average brew review
@app.route('/brew-review', methods=['GET', 'POST'])
def template_response_with_data():
    final_query = 'SELECT AVG(brew_rev_value) FROM brew_review INNER JOIN brew ON brew_id = brew_id WHERE' 
    add_to_query = ''
    print(request.form)

    if "brew_name" in request.form:
        brew_name = int(request.form["brew_name"])
        if len(brew_name)!=0:
            add_to_query = " brew_name = {brew_name}".format(brew_name=brew_name)
            final_query = final_query + add_to_query

    add_to_query = ';'
    template_data = {}
    average_bew_rev_value = sql_query(final_query)
    template_data['average_bew_rev_value'] = average_bew_rev_value
    return render_template('brew-review.component.html', template_data=template_data)

# Creates and sends SQL query for average brew review
@app.route('/brewery-review', methods=['GET', 'POST'])
def template_response_with_data():
    final_query = 'SELECT AVG(brewery_rev_value) FROM brewery_review INNER JOIN brewery ON brewery_id = brewery_id WHERE' 
    add_to_query = ''
    print(request.form)

    if "brewery_name" in request.form:
        brewery_name = int(request.form["brewery_name"])
        if len(brewery_name)!=0:
            add_to_query = " brewery_name = {brewery_name}".format(brewery_name=brewery_name)
            final_query = final_query + add_to_query

    add_to_query = ';'
    template_data = {}
    average_brewery_rev_value = sql_query(final_query)
    template_data['average_brewery_rev_value'] = average_brewery_rev_value
    return render_template('brewery-review.component.html', template_data=template_data)

# Sets Main Method
if __name__ == '__main__':
app.run(**config['app'])