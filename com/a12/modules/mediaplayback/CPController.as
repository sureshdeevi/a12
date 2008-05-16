/* $Id$ */

package com.a12.modules.mediaplayback
{

	import com.a12.pattern.observer.*;
	import com.a12.pattern.mvc.*;

	import com.a12.util.*;

	import com.a12.modules.mediaplayback.*;

	public class CPController extends AbstractController
	{
	
		private	var	mod:Object;
	
		public function CPController(m:Observable)
		{
			super(m);
			mod = getModel();	
		
		}
	
		public function toggleSound():void
		{
			//
				
			//var mod = getModel();
		
			switch(true){
		
				case (mod.soundController.getVolume() == 100):
					mod.soundController.setVolume(0);
				break;
			
				case (mod.soundController.getVolume() == 0):
					mod.soundController.setVolume(100);
				break;
			
			}
	
			//MediaPlaybackModel(getModel()).toggleSound();
		
		}
	
		public function pause():void
		{
			//var obj = getModel();
			mod.pauseStream();
		}
	
		public function getMode():String
		{
			return mod.getMode();
		}
	
	
		public function toggle():void
		{
			//var obj = getModel();
			mod.toggleStream();
		}
	
		public function play():void
		{
			//var obj = getModel();
			mod.playStream();
		}	
	
		public function stop():void
		{
			//var obj = getModel();
			mod.stopStream();
		}	
	
	
		public function findSeek(percent:Number):void
		{
			//var obj = getModel();
			mod.seekStreamPercent(percent);
			
		}

	}

}