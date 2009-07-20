package com.empika
{
	 import mx.containers.VBox;
	 import mx.controls.Label;
	 import mx.core.UIComponent;
	 import mx.core.IDataRenderer;
	 import mx.controls.listClasses.IListItemRenderer
	 import flash.utils.IDataInput;	
	 public class ScItemRenderer extends UIComponent implements IDataRenderer, IListItemRenderer
	 {
		 private var _data:Object;
		 public function ScItemRenderer()
		 {
		 	super();
		 }
		 protected override function createChildren():void
		 {
			 super.createChildren();
			 var container:VBox = new VBox();
			 container.height = 200;
			 container.width = 300;
			 var title:Label = new Label();
			 title.text = _data.title;
			 container.addChild(title);			
			 addChild(container);
		 }
		 protected override function updateDisplayList(unscaledWidth:Number, unscaledHeight:Number):void
		 {
		 	super.updateDisplayList(unscaledWidth, unscaledHeight);
		 }
		 
		 protected override function commitProperties():void
		 {
			 super.commitProperties();
		 }
		 
		 protected override function measure():void
		 {
		 	super.measure();
		 }
		 
		 public function get data():Object
		 {
		 	return _data;
		 }
		 		
		 public function set data(value:Object):void
		 {			
		 	_data = value;
		 }
	 }
 }