// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

   function AppearEffect(element){
       new Effect.toggle(element, 'Appear', {duration:2});
   }
   function BUDEffect(element){
       new Effect.toggle(element,'Blind', {duration:2});
   }
   function SUDEffect(element){
       new Effect.toggle(element,'Slide', {duration:2});
   }