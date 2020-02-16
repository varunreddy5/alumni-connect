// import 'core-js/stable';
// import 'regenerator-runtime/runtime';
import { Application } from 'stimulus';
import { definitionsFromContext } from 'stimulus/webpack-helpers';

const application = Application.start();
const context = require.context('./controllers', true, /\.js$/);
application.load(definitionsFromContext(context));

require("trix")
require("@rails/actiontext")