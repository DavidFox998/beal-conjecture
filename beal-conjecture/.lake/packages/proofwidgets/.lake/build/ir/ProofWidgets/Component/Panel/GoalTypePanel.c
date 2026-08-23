// Lean compiler output
// Module: ProofWidgets.Component.Panel.GoalTypePanel
// Imports: Init ProofWidgets.Component.Panel.Basic
#include <lean/lean.h>
#if defined(__clang__)
#pragma clang diagnostic ignored "-Wunused-parameter"
#pragma clang diagnostic ignored "-Wunused-label"
#elif defined(__GNUC__) && !defined(__CLANG__)
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wunused-label"
#pragma GCC diagnostic ignored "-Wunused-but-set-variable"
#endif
#ifdef __cplusplus
extern "C" {
#endif
static lean_object* l_ProofWidgets_GoalTypePanel___closed__4;
LEAN_EXPORT lean_object* l_ProofWidgets_GoalTypePanel;
uint64_t lean_string_hash(lean_object*);
static lean_object* l_ProofWidgets_GoalTypePanel___closed__3;
static lean_object* l_ProofWidgets_GoalTypePanel___closed__5;
static lean_object* l_ProofWidgets_GoalTypePanel___closed__1;
static uint64_t l_ProofWidgets_GoalTypePanel___closed__2;
LEAN_EXPORT lean_object* l_ProofWidgets_GoalTypePanel___closed__3___boxed__const__1;
static lean_object* _init_l_ProofWidgets_GoalTypePanel___closed__1() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("window;import{jsxs as e,jsx as r,Fragment as n}from\"react/jsx-runtime\";import{useRpcSession as t,EnvPosContext as a,useAsyncPersistent as o,mapRpcError as s,importWidgetModule as l,InteractiveCode as i}from\"@leanprover/infoview\";import*as c from\"react\";async function m(t,a,o){if(\"text\"in o)return r(n,{children:o.text});if(\"element\"in o){const[e,n,s]=o.element,l={};for(const[e,r]of n)l[e]=r;const i=await Promise.all(s.map((async e=>await m(t,a,e))));return\"hr\"===e\?r(\"hr\",{}):0===i.length\?c.createElement(e,l):c.createElement(e,l,i)}if(\"component\"in o){const[e,r,n,s]=o.component,i=await Promise.all(s.map((async e=>await m(t,a,e)))),u={...n,pos:a},d=await l(t,a,e);if(!(r in d))throw new Error(`Module '${e}' does not export '${r}'`);return 0===i.length\?c.createElement(d[r],u):c.createElement(d[r],u,i)}return e(\"span\",{className:\"red\",children:[\"Unknown HTML variant: \",JSON.stringify(o)]})}function u({html:l}){const i=t(),u=c.useContext(a),d=o((()=>m(i,u,l)),[i,u,l]);return\"resolved\"===d.state\?d.value:\"rejected\"===d.state\?e(\"span\",{className:\"red\",children:[\"Error rendering HTML: \",s(d.error).message]}):r(n,{})}function d({expr:a}){const l=t(),c=o((()=>l.call(\"ProofWidgets.ppExprTagged\",{expr:a})),[a]);return\"resolved\"===c.state\?r(i,{fmt:c.value}):\"rejected\"===c.state\?e(n,{children:[\"Error: $\",s(c.error).message]}):r(n,{children:\"Loading..\"})}function f({expr:a}){const l=t(),[i,m]=c.useState({tag:\"auto\"}),f=o((async()=>{const e=await async function(e,r){return(await e.call(\"ProofWidgets.getExprPresentations\",{expr:r})).presentations}(l,a);return m((r=>\"manual\"!==r.tag||void 0===r.name||e.some((e=>e.name===r.name))\?r:{tag:\"auto\"})),new Map(e.map((e=>[e.name,e])))}),[l,a]);if(\"rejected\"===f.state)return e(n,{children:[\"Error: \",s(f.error).message]});if(\"resolved\"===f.state){console.log(i,f.value);let n=\"none\";return\"auto\"===i.tag&&0<f.value.size\?n=Array.from(f.value.values())[0].name:\"manual\"!==i.tag||\"none\"!==i.name&&!f.value.has(i.name)||(n=i.name),e(\"div\",{style:{display:\"flow-root\"},children:[\"none\"!==n&&r(u,{html:f.value.get(n).html}),\"none\"===n&&r(d,{expr:a}),e(\"select\",{className:\"fr\",value:n,onChange:e=>{m({tag:\"manual\",name:e.target.value})},children:[Array.from(f.value.values(),(e=>r(\"option\",{value:e.name,children:e.userName},e.name))),r(\"option\",{value:\"none\",children:\"Default\"},\"none\")]})]})}return r(d,{expr:a})}function g({pos:a,goals:l,loc:i}){const c=t(),m=o((async()=>{const e=function(e,r){for(const n of e)if(n.mvarId===r.mvarId)return n;throw new Error(`Could not find goal for location ${JSON.stringify(r)}`)}(l,i);if(void 0===e.ctx)throw new Error(\"Lean server 1.1.2 or newer is required.\");return(await c.call(\"ProofWidgets.goalsLocationsToExprs\",{locations:[[e.ctx,i]]})).exprs[0]}),[c,l,i]);return\"loading\"===m.state\?r(n,{children:\"Loading..\"}):\"rejected\"===m.state\?e(n,{children:[\"Error: \",s(m.error).message]}):r(f,{expr:m.value})}function p(t){if(0===t.goals.length)return r(n,{});const a=t.goals[0];if(!a.mvarId)throw new Error(\"Lean server 1.1.2 or newer is required.\");return e(\"details\",{open:!0,children:[r(\"summary\",{className:\"mv2 pointer\",children:\"Main goal type\"}),r(g,{pos:t.pos,goals:t.goals,loc:{mvarId:a.mvarId,loc:{target:\"/\"}}})]})}export{p as default};", 3231, 3231);
return x_1;
}
}
static uint64_t _init_l_ProofWidgets_GoalTypePanel___closed__2() {
_start:
{
lean_object* x_1; uint64_t x_2; 
x_1 = l_ProofWidgets_GoalTypePanel___closed__1;
x_2 = lean_string_hash(x_1);
return x_2;
}
}
static lean_object* _init_l_ProofWidgets_GoalTypePanel___closed__3___boxed__const__1() {
_start:
{
uint64_t x_1; lean_object* x_2; 
x_1 = l_ProofWidgets_GoalTypePanel___closed__2;
x_2 = lean_box_uint64(x_1);
return x_2;
}
}
static lean_object* _init_l_ProofWidgets_GoalTypePanel___closed__3() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_ProofWidgets_GoalTypePanel___closed__1;
x_2 = l_ProofWidgets_GoalTypePanel___closed__3___boxed__const__1;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_ProofWidgets_GoalTypePanel___closed__4() {
_start:
{
lean_object* x_1; 
x_1 = lean_mk_string_unchecked("default", 7, 7);
return x_1;
}
}
static lean_object* _init_l_ProofWidgets_GoalTypePanel___closed__5() {
_start:
{
lean_object* x_1; lean_object* x_2; lean_object* x_3; 
x_1 = l_ProofWidgets_GoalTypePanel___closed__3;
x_2 = l_ProofWidgets_GoalTypePanel___closed__4;
x_3 = lean_alloc_ctor(0, 2, 0);
lean_ctor_set(x_3, 0, x_1);
lean_ctor_set(x_3, 1, x_2);
return x_3;
}
}
static lean_object* _init_l_ProofWidgets_GoalTypePanel() {
_start:
{
lean_object* x_1; 
x_1 = l_ProofWidgets_GoalTypePanel___closed__5;
return x_1;
}
}
lean_object* initialize_Init(uint8_t builtin, lean_object*);
lean_object* initialize_ProofWidgets_Component_Panel_Basic(uint8_t builtin, lean_object*);
static bool _G_initialized = false;
LEAN_EXPORT lean_object* initialize_ProofWidgets_Component_Panel_GoalTypePanel(uint8_t builtin, lean_object* w) {
lean_object * res;
if (_G_initialized) return lean_io_result_mk_ok(lean_box(0));
_G_initialized = true;
res = initialize_Init(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
res = initialize_ProofWidgets_Component_Panel_Basic(builtin, lean_io_mk_world());
if (lean_io_result_is_error(res)) return res;
lean_dec_ref(res);
l_ProofWidgets_GoalTypePanel___closed__1 = _init_l_ProofWidgets_GoalTypePanel___closed__1();
lean_mark_persistent(l_ProofWidgets_GoalTypePanel___closed__1);
l_ProofWidgets_GoalTypePanel___closed__2 = _init_l_ProofWidgets_GoalTypePanel___closed__2();
l_ProofWidgets_GoalTypePanel___closed__3___boxed__const__1 = _init_l_ProofWidgets_GoalTypePanel___closed__3___boxed__const__1();
lean_mark_persistent(l_ProofWidgets_GoalTypePanel___closed__3___boxed__const__1);
l_ProofWidgets_GoalTypePanel___closed__3 = _init_l_ProofWidgets_GoalTypePanel___closed__3();
lean_mark_persistent(l_ProofWidgets_GoalTypePanel___closed__3);
l_ProofWidgets_GoalTypePanel___closed__4 = _init_l_ProofWidgets_GoalTypePanel___closed__4();
lean_mark_persistent(l_ProofWidgets_GoalTypePanel___closed__4);
l_ProofWidgets_GoalTypePanel___closed__5 = _init_l_ProofWidgets_GoalTypePanel___closed__5();
lean_mark_persistent(l_ProofWidgets_GoalTypePanel___closed__5);
l_ProofWidgets_GoalTypePanel = _init_l_ProofWidgets_GoalTypePanel();
lean_mark_persistent(l_ProofWidgets_GoalTypePanel);
return lean_io_result_mk_ok(lean_box(0));
}
#ifdef __cplusplus
}
#endif
