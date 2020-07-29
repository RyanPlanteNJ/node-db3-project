const db = require('../data/db-config.js');

function find() {
  return db('schemes');
}

function findById(id) {
  return db('scehmes')
  .where({ id });
}

function findSteps(id) {
  return db('steps')
  .where('scheme_id', id)
}

function add(schemeData) {
  return db('schemes')
  .insert(schemeData)
}

function update(changes, id) {
  return db('schemes')
  .update(changes)
  .where('id', id)
}

function remove(id) {
  return db('schemes')
  .del()
  .where('id', id)
}

module.exports = {
  find,
  findById,
  findSteps,
  add,
  update,
  remove
}
