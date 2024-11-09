package backend;

import Conductor.BPMChangeEvent;
import flixel.FlxG;
import flixel.addons.ui.FlxUIState;
import flixel.math.FlxRect;
import flixel.util.FlxTimer;
import flixel.addons.transition.FlxTransitionableState;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxGradient;
import flixel.FlxSubState;
import flixel.FlxSprite;
import flixel.FlxCamera;

class Transition extends MusicBeatSubstate {

        private var qqqeb:FlxSprite;
    private var _animationName:String;
    public var currentFrame:Int = 0;
	public function new(animationName:String) {
		super();

		_animationName = animationName;
	}

	override public function create():Void 
	{
                super.create();
	qqqeb = new FlxSprite(0, 0);
	qqqeb.frames = Paths.getSparrowAtlas('transition_out');
	qqqeb.animation.addByPrefix(_animationName, 'transition_out', 48, false);
	qqqeb.screenCenter();
	qqqeb.scale.set(2, 2);
	qqqeb.animation.play(_animationName);
	add(qqqeb);
	qqqeb.animation.finishCallback = function():Void
        {
                currentFrame = _animationSprite.animation.curFrameIndex;
		close();
        };
	}
	
	override function update(elapsed:Float) {
		super.update(elapsed);
	}

	override function destroy() {
		super.destroy();
	}
}
