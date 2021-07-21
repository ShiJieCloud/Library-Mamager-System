<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh">
<head>
  <meta charset='UTF-8'><meta name='viewport' content='width=device-width initial-scale=1'>

  <style type='text/css'>html {overflow-x: initial !important;}:root { --bg-color:#ffffff; --text-color:#333333; --select-text-bg-color:#B5D6FC; --select-text-font-color:auto; --monospace:"Lucida Console",Consolas,"Courier",monospace; --title-bar-height:20px; }
  .mac-os-11 { --title-bar-height:28px; }
  html { font-size: 14px; background-color: var(--bg-color); color: var(--text-color); font-family: "Helvetica Neue", Helvetica, Arial, sans-serif; -webkit-font-smoothing: antialiased; }
  body { margin: 0px; padding: 0px; height: auto; bottom: 0px; top: 0px; left: 0px; right: 0px; font-size: 1rem; line-height: 1.42857; overflow-x: hidden; background: inherit; tab-size: 4; }
  iframe { margin: auto; }
  a.url { word-break: break-all; }
  a:active, a:hover { outline: 0px; }
  .in-text-selection, ::selection { text-shadow: none; background: var(--select-text-bg-color); color: var(--select-text-font-color); }
  #write { margin: 0px auto; height: auto; width: inherit; word-break: normal; overflow-wrap: break-word; position: relative; white-space: normal; overflow-x: visible; padding-top: 36px; }
  #write.first-line-indent p { text-indent: 2em; }
  #write.first-line-indent li p, #write.first-line-indent p * { text-indent: 0px; }
  #write.first-line-indent li { margin-left: 2em; }
  .for-image #write { padding-left: 8px; padding-right: 8px; }
  body.typora-export { padding-left: 30px; padding-right: 30px; }
  .typora-export .footnote-line, .typora-export li, .typora-export p { white-space: pre-wrap; }
  .typora-export .task-list-item input { pointer-events: none; }
  @media screen and (max-width: 500px) {
    body.typora-export { padding-left: 0px; padding-right: 0px; }
    #write { padding-left: 20px; padding-right: 20px; }
    .CodeMirror-sizer { margin-left: 0px !important; }
    .CodeMirror-gutters { display: none !important; }
  }
  #write li > figure:last-child { margin-bottom: 0.5rem; }
  #write ol, #write ul { position: relative; }
  img { max-width: 100%; vertical-align: middle; image-orientation: from-image; }
  button, input, select, textarea { color: inherit; font: inherit; }
  input[type="checkbox"], input[type="radio"] { line-height: normal; padding: 0px; }
  *, ::after, ::before { box-sizing: border-box; }
  #write h1, #write h2, #write h3, #write h4, #write h5, #write h6, #write p, #write pre { width: inherit; }
  #write h1, #write h2, #write h3, #write h4, #write h5, #write h6, #write p { position: relative; }
  p { line-height: inherit; }
  h1, h2, h3, h4, h5, h6 { break-after: avoid-page; break-inside: avoid; orphans: 4; }
  p { orphans: 4; }
  h1 { font-size: 2rem; }
  h2 { font-size: 1.8rem; }
  h3 { font-size: 1.6rem; }
  h4 { font-size: 1.4rem; }
  h5 { font-size: 1.2rem; }
  h6 { font-size: 1rem; }
  .md-math-block, .md-rawblock, h1, h2, h3, h4, h5, h6, p { margin-top: 1rem; margin-bottom: 1rem; }
  .hidden { display: none; }
  .md-blockmeta { color: rgb(204, 204, 204); font-weight: 700; font-style: italic; }
  a { cursor: pointer; }
  sup.md-footnote { padding: 2px 4px; background-color: rgba(238, 238, 238, 0.7); color: rgb(85, 85, 85); border-radius: 4px; cursor: pointer; }
  sup.md-footnote a, sup.md-footnote a:hover { color: inherit; text-transform: inherit; text-decoration: inherit; }
  #write input[type="checkbox"] { cursor: pointer; width: inherit; height: inherit; }
  figure { overflow-x: auto; margin: 1.2em 0px; max-width: calc(100% + 16px); padding: 0px; }
  figure > table { margin: 0px; }
  tr { break-inside: avoid; break-after: auto; }
  thead { display: table-header-group; }
  table { border-collapse: collapse; border-spacing: 0px; width: 100%; overflow: auto; break-inside: auto; text-align: left; }
  table.md-table td { min-width: 32px; }
  .CodeMirror-gutters { border-right: 0px; background-color: inherit; }
  .CodeMirror-linenumber { user-select: none; }
  .CodeMirror { text-align: left; }
  .CodeMirror-placeholder { opacity: 0.3; }
  .CodeMirror pre { padding: 0px 4px; }
  .CodeMirror-lines { padding: 0px; }
  div.hr:focus { cursor: none; }
  #write pre { white-space: pre-wrap; }
  #write.fences-no-line-wrapping pre { white-space: pre; }
  #write pre.ty-contain-cm { white-space: normal; }
  .CodeMirror-gutters { margin-right: 4px; }
  .md-fences { font-size: 0.9rem; display: block; break-inside: avoid; text-align: left; overflow: visible; white-space: pre; background: inherit; position: relative !important; }
  .md-fences-adv-panel { width: 100%; margin-top: 10px; text-align: center; padding-top: 0px; padding-bottom: 8px; overflow-x: auto; }
  #write .md-fences.mock-cm { white-space: pre-wrap; }
  .md-fences.md-fences-with-lineno { padding-left: 0px; }
  #write.fences-no-line-wrapping .md-fences.mock-cm { white-space: pre; overflow-x: auto; }
  .md-fences.mock-cm.md-fences-with-lineno { padding-left: 8px; }
  .CodeMirror-line, twitterwidget { break-inside: avoid; }
  .footnotes { opacity: 0.8; font-size: 0.9rem; margin-top: 1em; margin-bottom: 1em; }
  .footnotes + .footnotes { margin-top: 0px; }
  .md-reset { margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: top; background: 0px 0px; text-decoration: none; text-shadow: none; float: none; position: static; width: auto; height: auto; white-space: nowrap; cursor: inherit; -webkit-tap-highlight-color: transparent; line-height: normal; font-weight: 400; text-align: left; box-sizing: content-box; direction: ltr; }
  li div { padding-top: 0px; }
  blockquote { margin: 1rem 0px; }
  li .mathjax-block, li p { margin: 0.5rem 0px; }
  li blockquote { margin: 1rem 0px; }
  li { margin: 0px; position: relative; }
  blockquote > :last-child { margin-bottom: 0px; }
  blockquote > :first-child, li > :first-child { margin-top: 0px; }
  .footnotes-area { color: rgb(136, 136, 136); margin-top: 0.714rem; padding-bottom: 0.143rem; white-space: normal; }
  #write .footnote-line { white-space: pre-wrap; }
  @media print {
    body, html { border: 1px solid transparent; height: 99%; break-after: avoid; break-before: avoid; font-variant-ligatures: no-common-ligatures; }
    #write { margin-top: 0px; padding-top: 0px; border-color: transparent !important; }
    .typora-export * { -webkit-print-color-adjust: exact; }
    .typora-export #write { break-after: avoid; }
    .typora-export #write::after { height: 0px; }
    .is-mac table { break-inside: avoid; }
    .typora-export-show-outline .typora-export-sidebar { display: none; }
  }
  .footnote-line { margin-top: 0.714em; font-size: 0.7em; }
  a img, img a { cursor: pointer; }
  pre.md-meta-block { font-size: 0.8rem; min-height: 0.8rem; white-space: pre-wrap; background: rgb(204, 204, 204); display: block; overflow-x: hidden; }
  p > .md-image:only-child:not(.md-img-error) img, p > img:only-child { display: block; margin: auto; }
  #write.first-line-indent p > .md-image:only-child:not(.md-img-error) img { left: -2em; position: relative; }
  p > .md-image:only-child { display: inline-block; width: 100%; }
  #write .MathJax_Display { margin: 0.8em 0px 0px; }
  .md-math-block { width: 100%; }
  .md-math-block:not(:empty)::after { display: none; }
  .MathJax_ref { fill: currentcolor; }
  [contenteditable="true"]:active, [contenteditable="true"]:focus, [contenteditable="false"]:active, [contenteditable="false"]:focus { outline: 0px; box-shadow: none; }
  .md-task-list-item { position: relative; list-style-type: none; }
  .task-list-item.md-task-list-item { padding-left: 0px; }
  .md-task-list-item > input { position: absolute; top: 0px; left: 0px; margin-left: -1.2em; margin-top: calc(1em - 10px); border: none; }
  .math { font-size: 1rem; }
  .md-toc { min-height: 3.58rem; position: relative; font-size: 0.9rem; border-radius: 10px; }
  .md-toc-content { position: relative; margin-left: 0px; }
  .md-toc-content::after, .md-toc::after { display: none; }
  .md-toc-item { display: block; color: rgb(65, 131, 196); }
  .md-toc-item a { text-decoration: none; }
  .md-toc-inner:hover { text-decoration: underline; }
  .md-toc-inner { display: inline-block; cursor: pointer; }
  .md-toc-h1 .md-toc-inner { margin-left: 0px; font-weight: 700; }
  .md-toc-h2 .md-toc-inner { margin-left: 2em; }
  .md-toc-h3 .md-toc-inner { margin-left: 4em; }
  .md-toc-h4 .md-toc-inner { margin-left: 6em; }
  .md-toc-h5 .md-toc-inner { margin-left: 8em; }
  .md-toc-h6 .md-toc-inner { margin-left: 10em; }
  @media screen and (max-width: 48em) {
    .md-toc-h3 .md-toc-inner { margin-left: 3.5em; }
    .md-toc-h4 .md-toc-inner { margin-left: 5em; }
    .md-toc-h5 .md-toc-inner { margin-left: 6.5em; }
    .md-toc-h6 .md-toc-inner { margin-left: 8em; }
  }
  a.md-toc-inner { font-size: inherit; font-style: inherit; font-weight: inherit; line-height: inherit; }
  .footnote-line a:not(.reversefootnote) { color: inherit; }
  .md-attr { display: none; }
  .md-fn-count::after { content: "."; }
  code, pre, samp, tt { font-family: var(--monospace); }
  kbd { margin: 0px 0.1em; padding: 0.1em 0.6em; font-size: 0.8em; color: rgb(36, 39, 41); background: rgb(255, 255, 255); border: 1px solid rgb(173, 179, 185); border-radius: 3px; box-shadow: rgba(12, 13, 14, 0.2) 0px 1px 0px, rgb(255, 255, 255) 0px 0px 0px 2px inset; white-space: nowrap; vertical-align: middle; }
  .md-comment { color: rgb(162, 127, 3); opacity: 0.8; font-family: var(--monospace); }
  code { text-align: left; vertical-align: initial; }
  a.md-print-anchor { white-space: pre !important; border-width: initial !important; border-style: none !important; border-color: initial !important; display: inline-block !important; position: absolute !important; width: 1px !important; right: 0px !important; outline: 0px !important; background: 0px 0px !important; text-decoration: initial !important; text-shadow: initial !important; }
  .md-inline-math .MathJax_SVG .noError { display: none !important; }
  .html-for-mac .inline-math-svg .MathJax_SVG { vertical-align: 0.2px; }
  .md-fences-math .MathJax_SVG_Display, .md-math-block .MathJax_SVG_Display { text-align: center; margin: 0px; position: relative; text-indent: 0px; max-width: none; max-height: none; min-height: 0px; min-width: 100%; width: auto; overflow-y: visible; display: block !important; }
  .MathJax_SVG_Display, .md-inline-math .MathJax_SVG_Display { width: auto; margin: inherit; display: inline-block !important; }
  .MathJax_SVG .MJX-monospace { font-family: var(--monospace); }
  .MathJax_SVG .MJX-sans-serif { font-family: sans-serif; }
  .MathJax_SVG { display: inline; font-style: normal; font-weight: 400; line-height: normal; text-indent: 0px; text-align: left; text-transform: none; letter-spacing: normal; word-spacing: normal; overflow-wrap: normal; white-space: nowrap; float: none; direction: ltr; max-width: none; max-height: none; min-width: 0px; min-height: 0px; border: 0px; padding: 0px; margin: 0px; zoom: 90%; }
  #math-inline-preview-content { zoom: 1.1; }
  .MathJax_SVG * { transition: none 0s ease 0s; }
  .MathJax_SVG_Display svg { vertical-align: middle !important; margin-bottom: 0px !important; margin-top: 0px !important; }
  .os-windows.monocolor-emoji .md-emoji { font-family: "Segoe UI Symbol", sans-serif; }
  .md-diagram-panel > svg { max-width: 100%; }
  [lang="flow"] svg, [lang="mermaid"] svg { max-width: 100%; height: auto; }
  [lang="mermaid"] .node text { font-size: 1rem; }
  table tr th { border-bottom: 0px; }
  video { max-width: 100%; display: block; margin: 0px auto; }
  iframe { max-width: 100%; width: 100%; border: none; }
  .highlight td, .highlight tr { border: 0px; }
  mark { background: rgb(255, 255, 0); color: rgb(0, 0, 0); }
  .md-html-inline .md-plain, .md-html-inline strong, mark .md-inline-math, mark strong { color: inherit; }
  .md-expand mark .md-meta { opacity: 0.3 !important; }
  mark .md-meta { color: rgb(0, 0, 0); }
  @media print {
    .typora-export h1, .typora-export h2, .typora-export h3, .typora-export h4, .typora-export h5, .typora-export h6 { break-inside: avoid; }
  }
  .md-diagram-panel .messageText { stroke: none !important; }
  .md-diagram-panel .start-state { fill: var(--node-fill); }
  .md-diagram-panel .edgeLabel rect { opacity: 1 !important; }
  .md-require-zoom-fix foreignobject { font-size: var(--mermaid-font-zoom); }
  .md-fences.md-fences-math { font-size: 1em; }
  .md-fences-math .MathJax_SVG_Display { margin-top: 8px; cursor: default; }
  .md-fences-advanced:not(.md-focus) { padding: 0px; white-space: nowrap; border: 0px; }
  .md-fences-advanced:not(.md-focus) { background: inherit; }
  .typora-export-show-outline .typora-export-content { max-width: 1440px; margin: auto; display: flex; flex-direction: row; }
  .typora-export-sidebar { width: 300px; font-size: 0.8rem; margin-top: 80px; margin-right: 18px; }
  .typora-export-show-outline #write { --webkit-flex:2; flex: 2 1 0%; }
  .typora-export-sidebar .outline-content { position: fixed; top: 0px; max-height: 100%; overflow: hidden auto; padding-bottom: 30px; padding-top: 60px; width: 300px; }
  @media screen and (max-width: 1024px) {
    .typora-export-sidebar, .typora-export-sidebar .outline-content { width: 240px; }
  }
  @media screen and (max-width: 800px) {
    .typora-export-sidebar { display: none; }
  }
  .outline-content li, .outline-content ul { margin-left: 0px; margin-right: 0px; padding-left: 0px; padding-right: 0px; list-style: none; }
  .outline-content ul { margin-top: 0px; margin-bottom: 0px; }
  .outline-content strong { font-weight: 400; }
  .outline-expander { width: 1rem; height: 1.42857rem; position: relative; display: table-cell; vertical-align: middle; cursor: pointer; padding-left: 4px; }
  .outline-expander::before { content: ""; position: relative; font-family: Ionicons; display: inline-block; font-size: 8px; vertical-align: middle; }
  .outline-item { padding-top: 3px; padding-bottom: 3px; cursor: pointer; }
  .outline-expander:hover::before { content: ""; }
  .outline-h1 > .outline-item { padding-left: 0px; }
  .outline-h2 > .outline-item { padding-left: 1em; }
  .outline-h3 > .outline-item { padding-left: 2em; }
  .outline-h4 > .outline-item { padding-left: 3em; }
  .outline-h5 > .outline-item { padding-left: 4em; }
  .outline-h6 > .outline-item { padding-left: 5em; }
  .outline-label { cursor: pointer; display: table-cell; vertical-align: middle; text-decoration: none; color: inherit; }
  .outline-label:hover { text-decoration: underline; }
  .outline-item:hover { border-color: rgb(245, 245, 245); background-color: var(--item-hover-bg-color); }
  .outline-item:hover { margin-left: -28px; margin-right: -28px; border-left: 28px solid transparent; border-right: 28px solid transparent; }
  .outline-item-single .outline-expander::before, .outline-item-single .outline-expander:hover::before { display: none; }
  .outline-item-open > .outline-item > .outline-expander::before { content: ""; }
  .outline-children { display: none; }
  .info-panel-tab-wrapper { display: none; }
  .outline-item-open > .outline-children { display: block; }
  .typora-export .outline-item { padding-top: 1px; padding-bottom: 1px; }
  .typora-export .outline-item:hover { margin-right: -8px; border-right: 8px solid transparent; }
  .typora-export .outline-expander::before { content: "+"; font-family: inherit; top: -1px; }
  .typora-export .outline-expander:hover::before, .typora-export .outline-item-open > .outline-item > .outline-expander::before { content: "−"; }
  .typora-export-collapse-outline .outline-children { display: none; }
  .typora-export-collapse-outline .outline-item-open > .outline-children, .typora-export-no-collapse-outline .outline-children { display: block; }
  .typora-export-no-collapse-outline .outline-expander::before { content: "" !important; }
  .typora-export-show-outline .outline-item-active > .outline-item .outline-label { font-weight: 700; }


  /*
   * Copyright (C) 2018 Drake, Inc.
   *
   * Licensed under the Apache License, Version 2.0 (the "License");
   * you may not use this file except in compliance with the License.
   * You may obtain a copy of the License at
   *
   * http://www.apache.org/licenses/LICENSE-2.0
   *
   * Unless required by applicable law or agreed to in writing, software
   * distributed under the License is distributed on an "AS IS" BASIS,
   * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   * See the License for the specific language governing permissions and
   * limitations under the License.
   */

  :root {
    --bg-color: #2b2b2b;
    --text-color: #acb7c4;
    --monospace: "Iosevka Curly Medium", HYZhengYuan, "JetBrains Mono", monospace;
    --control-text-color: var(--text-color);
    --meta-content-color: var(--text-color);
    --active-file-border-color: var(--drake-accent);
    --rawblock-edit-panel-bd: var(--code-block-bg-color);
    --item-hover-bg-color: #3c3d3e;
    --active-file-bg-color: var(--item-hover-bg-color);

    --md-char-color: #535455;
    --side-bar-bg-color: var(--bg-color);
    --search-select-bg-color: #ffffff;
    --search-select-text-color: var(--bg-color);
    --select-text-bg-color: #3473B068;
    --window-border: 1px solid #282828;

    --drake-accent: #3473b0;
    --drake-highlight: #58a1d6;
    --a-text-color: var(--drake-highlight);
    --outline-active-color: var(--a-text-color);
    --code-block-bg-color: var(--item-hover-bg-color);
    --code-block-text-color: #A9B7C6;
    --title-text-color: var(--text-color);
    --blockquote-border-color: var(--drake-accent);
    --blockquote-bg-color: #3a4451;
    --strong-text-color: var(--title-text-color);
    --h2-underline-bg: var(--title-text-color);
    --horizontal-divider-color: #e7e7e7;
    --height-light-bg-color: #e7ecf3;
    --yaml-text-color: #787878;
    --yaml-bg-color: var(--code-block-bg-color);
    --footnotes-bg-color: var(--item-hover-bg-color);
    --footnotes-highlight: #FFD760;
    --table-border-color: #535455;
    --table-header-bg-color: var(--item-hover-bg-color);
    --table-bg-color: var(--table-header-bg-color);
    --input-bg-color: var(--item-hover-bg-color);
    --btn-hover-bg-color: var(--item-hover-bg-color);
    --checkbox-checked: url("data:image/svg+xml,%3Csvg class='icon' viewBox='0 0 1024 1024' xmlns='http://www.w3.org/2000/svg' width='200' height='200'%3E%3Cpath d='M425.984 726.016l384-384-59.99-61.995-324.01 324.011-152.021-152.021L213.973 512zm384-598.016q36.01 0 61.013 25.984T896 213.974v596.01q0 34.005-25.003 59.99t-61.013 25.983h-596.01q-36.011 0-61.014-25.984t-25.003-59.989v-596.01q0-34.006 25.003-59.99T213.973 128h596.011z' fill='%2365b73b'/%3E%3C/svg%3E");
    --checkbox-unchecked: url("data:image/svg+xml,%3Csvg class='icon' viewBox='0 0 1024 1024' xmlns='http://www.w3.org/2000/svg' width='200' height='200'%3E%3Cpath d='M810.667 213.333v597.334H213.333V213.333h597.334m0-85.333H213.333C166.4 128 128 166.4 128 213.333v597.334C128 857.6 166.4 896 213.333 896h597.334C857.6 896 896 857.6 896 810.667V213.333C896 166.4 857.6 128 810.667 128z' fill='%23acb7c4'/%3E%3C/svg%3E");
  }

  html {
    font-size: 12px;
  }

  body {
    font-family: var(--monospace) !important;
    color: var(--text-color);
    -webkit-font-feature-settings: "liga" on, "calt" on;
    -webkit-font-smoothing: subpixel-antialiased;
    text-rendering: optimizeLegibility;
    letter-spacing: 0;
    margin: 0;
    overflow-x: hidden;
  }

  /*code block*/
  #write .md-fences {
    font-family: initial !important;
    font-size: 1rem;
    padding: 0.5rem !important;
    border-radius: 2px;
    word-wrap: normal;
    background-color: var(--code-block-bg-color);
    color: var(--code-block-text-color);
    border: none;
  }

  /*code snippet*/
  #write code, tt {
    margin: 0 2px;
    border-radius: 2px;
    font-family: initial !important;
    color: var(--drake-highlight);
  }

  /*raw block*/
  .md-rawblock-control:not(.md-rawblock-tooltip) {
    border-radius: 2px 0 2px 2px;
    padding: 0.2rem !important;
  }

  .md-rawblock:hover > .md-rawblock-container {
    background: none;
  }

  .md-rawblock-input {
    font-size: 1rem;
  }

  .md-rawblock:hover > .md-rawblock-tooltip {
    border-radius: 2px 2px 0 0;
    margin-bottom: 2px !important;
  }

  .md-rawblock-tooltip.md-rawblock-control {
    border-radius: 2px 2px 0 0;
    color: var(--code-block-text-color);
  }

  .md-rawblock-tooltip-name {
    color: var(--code-block-text-color);
    opacity: 1;
  }

  /*quote block*/
  blockquote:before {
    display: block;
    position: absolute;
    content: '';
    width: 4px;
    left: 0;
    top: 0;
    height: 100%;
    background-color: var(--blockquote-border-color);
    border-radius: 2px;
  }

  blockquote {
    color: var(--text-color);
    border-radius: 2px;
    padding: 10px 16px;
    background-color: var(--blockquote-bg-color);
    position: relative;
    border-left: none;
  }

  #write strong {
    color: var(--strong-text-color);
    font-weight: bold;
  }

  a {
    color: var(--a-text-color);
    padding: 0 2px;
  }

  img {
    border-radius: 2px;
  }

  #write {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px 30px 100px;
  }

  #write p {
    line-height: 1.6rem;
    word-spacing: .05rem;
  }

  #write > ul:first-child,
  #write > ol:first-child {
    margin-top: 30px;
  }

  body > *:first-child {
    margin-top: 0 !important;
  }

  body > *:last-child {
    margin-bottom: 0 !important;
  }

  h1,
  h2,
  h3,
  h4,
  h5,
  h6 {
    position: relative;
    margin-top: 2rem;
    margin-bottom: 1rem;
    font-weight: bold;
    line-height: 1.4;
    cursor: text;
    color: var(--title-text-color);
  }

  h3.md-focus:before, h4.md-focus:before, h5.md-focus:before, h6.md-focus:before {
    visibility: hidden;
  }

  h1 {
    font-size: 1.6rem;
    text-align: center;
    margin-top: 0;
  }

  h2 {
    font-size: 1.6rem;
    display: inline-block;
  }

  h2 .md-plain:after {
    display: block;
    content: '';
    height: 2px;
    margin-top: 4px;
    background-color: var(--h2-underline-bg);
    border-radius: 2px;
  }

  h3 {
    font-size: 1.4rem;
  }

  h4 {
    font-size: 1.2rem;
  }

  h5 {
    font-size: 1rem;
  }

  h6 {
    font-size: 1rem;
  }

  h1:hover a.anchor,
  h2:hover a.anchor,
  h3:hover a.anchor,
  h4:hover a.anchor,
  h5:hover a.anchor,
  h6:hover a.anchor {
    text-decoration: none;
  }

  h1 tt,
  h1 code {
    font-size: inherit !important;
  }

  h2 tt,
  h2 code {
    font-size: inherit !important;
  }

  h3 tt,
  h3 code {
    font-size: inherit !important;
  }

  h4 tt,
  h4 code {
    font-size: inherit !important;
  }

  h5 tt,
  h5 code {
    font-size: inherit !important;
  }

  h6 tt,
  h6 code {
    font-size: inherit !important;
  }

  p,
  blockquote,
  ul,
  ol,
  dl,
  table {
    margin: 0.8em 0;
  }

  li > ol,
  li > ul {
    margin: 0 0;
  }

  hr {
    height: 2px;
    padding: 0;
    margin: 16px 0;
    background-color: var(--horizontal-divider-color);
    border: 0 none;
    overflow: hidden;
    box-sizing: content-box;
  }

  body > h2:first-child {
    margin-top: 0;
    padding-top: 0;
  }

  body > h1:first-child {
    margin-top: 0;
    padding-top: 0;
  }

  body > h1:first-child + h2 {
    margin-top: 0;
    padding-top: 0;
  }

  body > h3:first-child,
  body > h4:first-child,
  body > h5:first-child,
  body > h6:first-child {
    margin-top: 0;
    padding-top: 0;
  }

  a:first-child h1,
  a:first-child h2,
  a:first-child h3,
  a:first-child h4,
  a:first-child h5,
  a:first-child h6 {
    margin-top: 0;
    padding-top: 0;
  }

  h1 p,
  h2 p,
  h3 p,
  h4 p,
  h5 p,
  h6 p {
    margin-top: 0;
  }

  li p.first {
    display: inline-block;
  }

  ul, ol {
    padding-inline-start: 2em;
  }

  ul:first-child,
  ol:first-child {
    margin-top: 0;
  }

  ul:last-child,
  ol:last-child {
    margin-bottom: 0;
  }

  table {
    padding: 0;
    word-break: initial;
  }

  table tr {
    border-top: 1px solid var(--table-border-color);
    margin: 0;
    padding: 0;
  }

  table tr:nth-child(2n),
  thead {
    background-color: var(--table-bg-color);
  }

  table tr th {
    font-weight: bold;
    border: 1px solid var(--table-border-color);
    border-bottom: 0;
    text-align: left;
    margin: 0;
    padding: 6px 13px;
  }

  table tr td {
    border: 1px solid var(--table-border-color);
    text-align: left;
    margin: 0;
    padding: 6px 13px;
  }

  table tr th:first-child,
  table tr td:first-child {
    margin-top: 0;
  }

  table tr th:last-child,
  table tr td:last-child {
    margin-bottom: 0;
  }

  #write em {
    padding: 0 5px 0 2px;
  }

  #write table thead th {
    background-color: var(--table-header-bg-color);
  }

  #write .CodeMirror-gutters {
    border-right: none;
  }

  /* height light. */
  #write mark {
    background-color: var(--height-light-bg-color);
    color: inherit;
    border-radius: 2px;
    padding: 2px 2px;
    margin: 0 2px;
  }

  #write del {
    padding: 1px 2px;
  }

  .md-task-list-item > input {
    margin-left: -1.3em;
  }

  @media print {
    html {
      font-size: 12px;
    }

    table,
    pre {
      page-break-inside: avoid;
    }

    pre {
      word-wrap: break-word;
    }
  }

  /*YAML*/
  #write pre.md-meta-block {
    padding: 1rem;
    font-size: 1rem;
    line-height: 1.45;
    background-color: var(--yaml-bg-color);
    border: 0;
    border-radius: 2px;
    color: var(--yaml-text-color);
    margin-top: 0 !important;
  }

  .mathjax-block > .code-tooltip {
    bottom: .375rem;
  }

  #write > h3.md-focus:before {
    left: -1.5625rem;
    top: .375rem;
  }

  #write > h4.md-focus:before {
    left: -1.5625rem;
    top: .285714286rem;
  }

  #write > h5.md-focus:before {
    left: -1.5625rem;
    top: .285714286rem;
  }

  #write > h6.md-focus:before {
    left: -1.5625rem;
    top: .285714286rem;
  }

  .md-image > .md-meta {
    border-radius: 2px;
    font-family: initial;
    padding: 2px 0 0 4px;
    color: inherit;
  }

  .md-tag {
    color: inherit;
  }

  .md-toc {
    margin-top: 20px;
    padding-bottom: 20px;
  }

  .sidebar-tabs {
    border-bottom: none;
  }

  .typora-quick-open-item {
    font-size: 1rem !important;
    height: 50px;
    padding-left: 8px;
    padding-top: 4px;
    padding-bottom: 4px;
  }

  #typora-quick-open {
    box-shadow: 0 0 8px #00000045;
    padding: 0;
  }

  .ty-quick-open-category.ty-has-prev .ty-quick-open-category-title {
    border-top: none;
  }

  #typora-quick-open-input {
    margin: 8px;
    box-shadow: none;
    border-radius: 2px;
  }

  #typora-quick-open-input input {
    font-size: 1rem;
    box-shadow: none;
    padding-top: 2px;
    padding-left: 10px;
    padding-right: 10px;
    line-height: 32px;
    max-height: 32px;
    border: none;
  }

  .modal-dialog#typora-quick-open {
    border-radius: 8px;
  }

  .ty-quick-open-category-title {
    padding-left: 8px;
    color: #BEBEBE;
    font-size: 0.8rem;
    margin-bottom: 4px;
  }

  .typora-quick-open-item-path {
    font-size: 0.8rem;
    text-overflow: ellipsis;
    white-space: nowrap;
    margin-top: 1px;
  }

  /*search input*/
  .form-control {
    border: none;
    border-radius: 2px;
    box-shadow: none;
  }

  #md-searchpanel .btn {
    border-radius: 2px;
  }

  #search-panel-replaceall-btn {
    padding-right: 5px !important;
    text-align: center !important;
  }

  #search-panel-replace-btn {
    text-align: center !important;
  }

  #md-searchpanel input {
    background: var(--input-bg-color);
    border-radius: 2px;
  }

  .searchpanel-search-option-btn {
    border-radius: 2px;
    border: none;
    background: transparent;
    color: var(--text-color);
  }

  .searchpanel-search-option-btn.active {
    background: transparent;
    color: var(--text-color);
    background: var(--text-color);
    color: var(--bg-color);
  }

  .form-control:focus {
    box-shadow: none;
  }

  #md-notification:before {
    top: 10px;
  }

  /** focus mode */
  .on-focus-mode blockquote {
    border-left-color: rgba(85, 85, 85, 0.12);
  }

  header,
  .context-menu,
  .megamenu-content,
  footer {
    font-family: initial;
  }

  .file-node-content:hover .file-node-icon,
  .file-node-content:hover .file-node-open-state {
    visibility: visible;
  }

  .mac-seamless-mode #typora-sidebar {
    font-size: 1rem;
  }

  /*insert element*/

  .file-list-item-summary {
    font-family: initial;
  }

  .outline-item {
    font-size: 1rem;
  }

  .sidebar-tab {
    font-size: 1rem;
  }

  /*footnotes mark*/
  #write .md-footnote {
    background-color: inherit;
    color: var(--drake-highlight);
    font-size: 0.9rem;
    border-radius: 0.9rem;
    padding-left: 0;
  }

  #write .md-footnote:before {
    content: "[";
  }

  #write .md-footnote:after {
    content: "]";
  }

  /*footnotes content*/
  .md-hover-tip .code-tooltip-content {
    border-radius: 2px;
  }

  /*footnotes title*/
  span.md-def-name {
    padding-right: 3ch;
    padding-left: 0;
    position: relative;
    font-weight: normal;
  }

  /*footnotes desc*/
  .footnotes {
    font-size: 1rem;
    font-weight: normal;
    color: var(--text-color);
    position: relative;
  }

  /*footnotes tooltip text*/
  .code-tooltip-content .md-plain {
    font-size: 0.9rem;
    font-family: inherit;
  }

  .code-tooltip-content code {
    padding: 0 2px;
    font-family: inherit;
    color: var(--footnotes-highlight);
    background-color: inherit;
  }

  .code-tooltip-content a {
    color: var(--footnotes-highlight);
  }

  div.code-tooltip-content {
    box-shadow: 0 0 8px #00000045;
    background: var(--footnotes-bg-color);
  }

  .footnotes {
    opacity: 1;
  }

  .md-def-name:after {
    content: ". ^";
    color: var(--text-color);
  }

  .md-def-footnote .md-def-name:before {
    content: "";
    color: var(--text-color);
    position: absolute;
  }

  .md-def-name:before {
    content: "";
    color: var(--text-color);
    position: absolute;
  }

  .CodeMirror-scroll::-webkit-scrollbar {
    display: none;
  }

  .file-list-item-summary {
    font-size: 1em;
  }

  .pin-outline #outline-content .outline-active strong, .pin-outline .outline-active {
    font-weight: 500;
    color: var(--outline-active-color);
  }

  .file-list-item.active {
    border-left: 4px solid var(--drake-accent);
  }

  #md-searchpanel .btn:not(.close-btn):hover {
    box-shadow: none;
    background: var(--btn-hover-bg-color);
  }

  /*checkbox*/
  #write input[type=checkbox] {
    opacity: 0;
    height: 1.6rem;
    width: 1.6rem;
    margin-left: -2em;
    margin-top: 0;
    top: 0;
  }

  #write .ul-list li.md-task-list-item.task-list-done p {
    text-decoration: line-through;
  }

  #write .ul-list li.md-task-list-item.task-list-done::before {
    content: "";
    background: var(--checkbox-checked) 0 0 no-repeat;
    background-size: 100%;
    display: inline-block;
    position: absolute;
    height: 1.6rem;
    width: 1.6rem;
    margin-left: -2em;
  }

  #write .ul-list li.md-task-list-item.task-list-not-done::before {
    content: "";
    background: var(--checkbox-unchecked) 0 0 no-repeat;
    background-size: 100%;
    display: inline-block;
    position: absolute;
    height: 1.6rem;
    width: 1.6rem;
    margin-left: -2em;
  }

  /*insert table*/
  .btn {
    border-radius: 2px;
  }

  .modal-content {
    border-radius: 8px;
  }

  .btn-primary:hover, .btn-primary:active {
    background-color: var(--btn-hover-bg-color);
    color: var(--drake-highlight);
  }

  .btn-primary {
    background-color: transparent;
    color: var(--drake-highlight);
  }

  .btn-default {
    background-color: transparent;
  }

  .btn:active {
    box-shadow: none;
    border-color: transparent;
  }

  .modal-footer {
    border-top: none;
  }

  #table-insert-col, #table-insert-row {
    background: var(--input-bg-color);
    border-radius: 2px;
  }

  /**
      code render
      Name: IntelliJ IDEA darcula theme
      From IntelliJ IDEA by JetBrains
   */
  .cm-s-inner.CodeMirror {
    background: var(--code-block-bg-color);
    color: var(--code-block-text-color);
  }

  .cm-s-inner span.cm-meta {
    color: #BBB529;
  }

  .cm-s-inner span.cm-number {
    color: #6897BB;
  }

  .cm-s-inner span.cm-keyword {
    color: #CC7832;
  }

  .cm-s-inner span.cm-def {
    color: #FFD760;
  }

  .cm-s-inner span.cm-variable {
    color: #A9B7C6;
  }

  .cm-s-inner span.cm-variable-2 {
    color: #A9B7C6;
  }

  .cm-s-inner span.cm-variable-3 {
    color: #9876AA;
  }

  .cm-s-inner span.cm-type {
    color: #AABBCC;
  }

  .cm-s-inner span.cm-property {
    color: #FFC66D;
  }

  .cm-s-inner span.cm-operator {
    color: #A9B7C6;
  }

  .cm-s-inner span.cm-string {
    color: #6A8759;
  }

  .cm-s-inner span.cm-string-2 {
    color: #6A8759;
  }

  .cm-s-inner span.cm-comment {
    color: #787878;
  }

  .cm-s-inner span.cm-link {
    color: #CC7832;
  }

  .cm-s-inner span.cm-atom {
    color: #CC7832;
  }

  .cm-s-inner span.cm-error {
    color: #BC3F3C;
  }

  .cm-s-inner span.cm-tag {
    color: #E8BF6A;
  }

  .cm-s-inner span.cm-quote {
    color: #a6e22e;
  }

  .cm-s-inner span.cm-attribute {
    color: #9876AA;
  }

  .cm-s-inner span.cm-qualifier {
    color: #6A8759;
  }

  .cm-s-inner span.cm-bracket {
    color: #E8BF6A;
  }

  .cm-s-inner span.cm-builtin {
    color: #FF9E59;
  }

  .cm-s-inner span.cm-special {
    color: #FF9E59;
  }

  .cm-s-inner span.cm-matchhighlight {
    color: #FFFFFF;
    background-color: rgba(50, 89, 48, .7);
    font-weight: normal;
  }

  .cm-s-inner span.cm-searching {
    color: #FFFFFF;
    background-color: rgba(61, 115, 59, .7);
    font-weight: normal;
  }

  .cm-s-inner .CodeMirror-cursor {
    border-left: 1px solid #A9B7C6;
  }

  .cm-s-inner .CodeMirror-gutters {
    background: #313335;
    border-right: 1px solid #313335;
  }

  .cm-s-inner .CodeMirror-guttermarker {
    color: #FFEE80;
  }

  .cm-s-inner .CodeMirror-guttermarker-subtle {
    color: #D0D0D0;
  }

  .cm-s-inner .CodeMirrir-linenumber {
    color: #606366;
  }

  .cm-s-inner .CodeMirror-matchingbracket {
    background-color: #3B514D;
    color: #FFEF28 !important;
  }

  .cm-s-inner .CodeMirror-selected {
    background: #214283 !important;
  }

  .cm-s-inner .CodeMirror-selectedtext {
    background: #214283 !important;
  }

  .cm-s-typora-default .CodeMirror-selectedtext {
    background: var(--select-text-bg-color) !important;
  }

  .cm-overlay.CodeMirror-selectedtext {
    background: var(--select-text-bg-color) !important;
  }

  .cm-s-inner div.CodeMirror-cursor {
    border-left: 1px solid #ffffff;
  }

  :root {--mermaid-font-zoom:1.25em ;}
  </style><title>简介</title>
</head>
<body class='typora-export os-windows'><div class='typora-export-content'>
  <div id='write'  class=''><div class='md-toc' mdtype='toc'><p class="md-toc-content" role="list"><span role="listitem" class="md-toc-item md-toc-h1" data-ref="n4"><a class="md-toc-inner" href="#library-manager-system">Library Manager System</a></span><span role="listitem" class="md-toc-item md-toc-h2" data-ref="n8"><a class="md-toc-inner" href="#项目背景">项目背景</a></span><span role="listitem" class="md-toc-item md-toc-h2" data-ref="n9"><a class="md-toc-inner" href="#项目简介">项目简介</a></span><span role="listitem" class="md-toc-item md-toc-h2" data-ref="n55"><a class="md-toc-inner" href="#项目展示">项目展示</a></span><span role="listitem" class="md-toc-item md-toc-h3" data-ref="n57"><a class="md-toc-inner" href="#首页">首页</a></span><span role="listitem" class="md-toc-item md-toc-h3" data-ref="n58"><a class="md-toc-inner" href="#图书管理系统">图书管理系统</a></span><span role="listitem" class="md-toc-item md-toc-h4" data-ref="n73"><a class="md-toc-inner" href="#添加书籍">添加书籍</a></span><span role="listitem" class="md-toc-item md-toc-h4" data-ref="n75"><a class="md-toc-inner" href="#编辑书籍">编辑书籍</a></span><span role="listitem" class="md-toc-item md-toc-h4" data-ref="n89"><a class="md-toc-inner" href="#删除书籍">删除书籍</a></span><span role="listitem" class="md-toc-item md-toc-h4" data-ref="n77"><a class="md-toc-inner" href="#全部书籍">全部书籍</a></span><span role="listitem" class="md-toc-item md-toc-h4" data-ref="n129"><a class="md-toc-inner" href="#搜索">搜索</a></span><span role="listitem" class="md-toc-item md-toc-h3" data-ref="n133"><a class="md-toc-inner" href="#联系">联系</a></span><span role="listitem" class="md-toc-item md-toc-h2" data-ref="n112"><a class="md-toc-inner" href="#项目构建">项目构建</a></span><span role="listitem" class="md-toc-item md-toc-h3" data-ref="n113"><a class="md-toc-inner" href="#准备工作">准备工作</a></span><span role="listitem" class="md-toc-item md-toc-h3" data-ref="n232"><a class="md-toc-inner" href="#项目开发">项目开发</a></span></p></div><hr /><p>&nbsp;</p><h1 id='library-manager-system'><span>Library Manager System</span></h1><p>&nbsp;</p><p>&nbsp;</p><h2 id='项目背景'><span>项目背景</span></h2><p>&nbsp;</p><p><span>这是一个简单的 SSM 项目，实现了图书管理的基本功能，由于一个人构建整个项目，所以需要浪费一些时间去网上找一些如 html 页面、前端插件库、图片等资源。</span></p><p><span>总之，这个项目非常的简单，大家可以继续去完善，再添加一些其他的功能，源文件下载地址已挂在最后。</span></p><p>&nbsp;</p><hr /><p>&nbsp;</p><h2 id='项目简介'><span>项目简介</span></h2><blockquote><p><span>开发环境</span></p></blockquote><ul><li><span>IDEA</span></li><li><span>JDK 1.8</span></li><li><span>MySQL 5.7.19</span></li><li><span>Tomcat 9</span></li><li><span>Maven 3.6</span></li><li><span>Windows</span></li></ul><blockquote><p><span>技术点</span></p></blockquote><ul><li><span>基础框架：SSM（Spring+SpringMVC+MyBatis）</span></li><li><span>Web 框架：</span><a href='https://www.bootcss.com/'><span>BootStrap</span></a></li><li><span>Web 技术：HTML、CSS、JavaScript、JSP、jQuery、AJAX、JSON</span></li><li><span>请求URI采用 RESTFUL 风格</span><sup class='md-footnote'><a href='#dfref-footnote-1' name='ref-footnote-1'>1</a></sup><span>URI</span></li></ul><blockquote><p><span>功能点</span></p></blockquote><ol start='' ><li><span>前端分页</span></li><li><span>前端通知框：使用了 jQuery 的 Toast 插件</span></li><li><span>前端弹窗：使用了 </span><a href='https://sweetalert.bootcss.com/'><span>SweetAlert2</span></a><span> 插件</span></li><li><span>AJAX 局部刷新</span></li><li><span>CRUD</span><sup class='md-footnote'><a href='#dfref-footnote-2' name='ref-footnote-2'>2</a></sup></li></ol><p>&nbsp;</p><hr /><p>&nbsp;</p><h2 id='项目展示'><span>项目展示</span></h2><p>&nbsp;</p><h3 id='首页'><span>首页</span></h3><p><img src="https://gitee.com/suitbaby/MarkDownPicMyself/raw/master/img/首页.gif" referrerpolicy="no-referrer" alt="首页"></p><p>&nbsp;</p><h3 id='图书管理系统'><span>图书管理系统</span></h3><p><img src="https://gitee.com/suitbaby/MarkDownPicMyself/raw/master/img/图书管理系统界面.gif" referrerpolicy="no-referrer" alt="图书管理系统界面"></p><p>&nbsp;</p><h4 id='添加书籍'><span>添加书籍</span></h4><p><img src="https://gitee.com/suitbaby/MarkDownPicMyself/raw/master/img/添加书籍.gif" referrerpolicy="no-referrer" alt="添加书籍"></p><h4 id='编辑书籍'><span>编辑书籍</span></h4><p><img src="https://gitee.com/suitbaby/MarkDownPicMyself/raw/master/img/编辑书籍.gif" referrerpolicy="no-referrer" alt="编辑书籍"></p><p>&nbsp;</p><h4 id='删除书籍'><span>删除书籍</span></h4><p><img src="https://gitee.com/suitbaby/MarkDownPicMyself/raw/master/img/删除书籍.gif" referrerpolicy="no-referrer" alt="删除书籍"></p><h4 id='全部书籍'><span>全部书籍</span></h4><p><img src="https://gitee.com/suitbaby/MarkDownPicMyself/raw/master/img/全部书籍.gif" referrerpolicy="no-referrer" alt="全部书籍"></p><h4 id='搜索'><span>搜索</span></h4><p><img src="https://gitee.com/suitbaby/MarkDownPicMyself/raw/master/img/搜索.gif" referrerpolicy="no-referrer" alt="搜索"></p><h3 id='联系'><span>联系</span></h3><p><img src="https://gitee.com/suitbaby/MarkDownPicMyself/raw/master/img/联系.gif" referrerpolicy="no-referrer" alt="联系"></p><p>&nbsp;</p><p>&nbsp;</p><hr /><p>&nbsp;</p><h2 id='项目构建'><span>项目构建</span></h2><p>&nbsp;</p><h3 id='准备工作'><span>准备工作</span></h3><ol><li><a href='https://blog.csdn.net/qq_20185737/article/details/107499266' target="_blank"><span>Java 开发环境的搭建</span></a></li><li><a href='https://blog.csdn.net/qq_20185737/article/details/118554104' target="_blank"><span>了解项目依赖管理工具 Maven</span></a></li><li><a href='https://blog.csdn.net/qq_20185737/article/details/118549260' target="_blank"><span>了解持久层框架 MyBatis</span></a></li><li><a href='https://blog.csdn.net/qq_20185737/article/details/118490837' target="_blank"><span>了解插件 LomBok 的使用</span></a></li><li><a href='https://blog.csdn.net/qq_20185737/article/details/116421320' target="_blank"><span>部署服务器 Tomccat</span></a></li><li><a href='https://blog.csdn.net/qq_20185737/article/details/115599307' target="_blank"><span>了解数据库的连接 JDBC</span></a></li></ol><p><span>准备工作准备好之后就可以着手开发了</span></p><p>&nbsp;</p><h3 id='项目开发'><span>项目开发</span></h3><p>&nbsp;</p><p><a href='https://blog.csdn.net/qq_20185737/article/details/118971141' target="_blank"><span>《搭建 SSM 框架》</span></a></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><div class='footnotes-area'  ><hr/>
    <div class='footnote-line'><span class='md-fn-count'>1</span> <span>RESTFUL ：客户端使用GET、POST、PUT、DELETE 4个表示操作方式的动词对服务端资源进行操作</span> <a name='dfref-footnote-1' href='#ref-footnote-1' title='回到文档' class='reversefootnote' >↩</a></div>
    <div class='footnote-line'><span class='md-fn-count'>2</span> <span>增加(Create)、检索(Retrieve)、更新(Update)和删除(Delete)</span> <a name='dfref-footnote-2' href='#ref-footnote-2' title='回到文档' class='reversefootnote' >↩</a></div></div></div></div>
</body>
</html>