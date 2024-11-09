package backend;

import flixel.FlxCamera;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.ui.FlxUIState;
import flixel.math.FlxRect;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxGradient;
import flixel.util.FlxTimer;

class Transition extends MusicBeatSubstate {
    public var isPlaying:Bool = false;

    public function new() {
        super();
        qqqeb = new FlxSprite(0, 0);
	qqqeb.frames = Paths.getSparrowAtlas('transition_out');
	qqqeb.animation.addByPrefix('lol', 'transition_out', 48, false);
	qqqeb.screenCenter();
	qqqeb.scale.set(2, 2);
	add(qqqeb);
    }

    public function playAnimation():Void {
        if (!isPlaying) {
            isPlaying = true;
            qqqeb.animation.play('lol');
        }
    }

    public function stopAnimation():Void {
        isPlaying = false;
        qqqeb.animation.stop();
    }

    public function reverseAnimation():Void {
        if (isPlaying) {
            qqqeb.animation.reverse();
            isPlaying = false;
	    qqqeb.animation.finishCallback = function(name:String):Void
        {
            close();
        };
        }
    }

}