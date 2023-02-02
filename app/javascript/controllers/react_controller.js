import { Controller } from "@hotwired/stimulus"
import { StrictMode } from "react";
import { createRoot } from "react-dom/client";

import React from 'react';
import ReactDOM from 'react-dom/client';
import App from "../components/App";



const rootElement = document.getElementById("root_test");
const root = createRoot(rootElement);



// Connects to data-controller="react"
export default class extends Controller {
  connect() {
    console.log("React controller connected")

root.render(
  <StrictMode>
    <App />
    <myButton/>
  </StrictMode>
);
  }
}
