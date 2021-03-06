package com.a12.util
{
	
	import flash.display.Sprite;
	import flash.display.Loader;
	import flash.net.URLRequest;	
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	
	import com.a12.util.CustomEvent;
	
	public class LoadMovie extends Sprite
	{
		public var loader:Loader;
		private var _ref:Object;
		
		public function LoadMovie(r:Object,asset:String)
		{
			_ref = r;
			
			loader = new Loader();
			var url:URLRequest = new URLRequest(asset);
			loader.load(url);
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE,handleLoad);
			loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,handleError);
		}
		
		private function handleError(e:IOErrorEvent):void
		{
			
		}
		
		private function handleLoad(e:Event):void
		{
			_ref.addChild(loader.content);
			dispatchEvent(new CustomEvent(Event.COMPLETE,true,false,{mc:_ref,content:loader.content}));
			loader = null;
		}
		
	}
	
}