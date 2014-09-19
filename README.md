archive
=======

[![Code Climate](https://codeclimate.com/github/noili/archive/badges/gpa.svg)](https://codeclimate.com/github/noili/archive)
[![Test Coverage](https://codeclimate.com/github/noili/archive/badges/coverage.svg)](https://codeclimate.com/github/noili/archive)
[![Build Status](https://travis-ci.org/noili/archive.svg?branch=master)](https://travis-ci.org/noili/archive)

# Modelo

FileRecord
- has many steps
- has and belongs to many tags
- has many assets - paperclip (el otro que no me acuerdo el nombre, algo con wave)
- belongs to topic (puede ser)

User

(fecha y hora + user).encript => wrewrewrweewr

file_records.json?token=wrewrewrweewr

params[token]

Step
- belongs to person
- belongs to office
- belongs to file_record

Persona
- belongs to organization

# Authenticacion

- Token

# Funcionalidades
- Crear FileRecord, asociarle una persona y una oficina de entrada(mesa de entrada)
- mover los file records por oficinas.
- la ultima oficia es archivo.´
- buscar file records por attributos, como el nombre, tag, palabras claves o por oficina.
por ejemplo todos los file records que se encuentran en el momento actual en una oficina.

ejemplo:
/files_records
 => {title: 'legalisenla',
     steps: [{oficina: {name: 'entrada'}, person: {name: 'olvap'}},
             {oficina: {name: 'archivo'}, person: {'name': 'fede'}]}

/file_records
#controller
@file_records = FileRecod.all

/file_record/4
@file_record = FileRecord.find params[:id]

json.builder @file_record


# test
1. crear un nuevo file_record

post /file_records

  {file_record: {title: 'legal', email: 'asda@.mail.com', tags: ['publico', 'otro']}}

2. mover el file record

 put /file_records/:id
 
  {oficina: 'computos', description:'los putos no responden'}

3. borrar un pase

  destroy: /file_records/:id

4. buscar

- ransack

  get /file_records
   
   {office: 'computos', ...}

