﻿package com.rf.anim {	import flash.display.Shader;    import flash.filters.ShaderFilter;    import flash.utils.ByteArray;		public class SquigglevisionFilter extends ShaderFilter {		[Embed(source="squiggle.pbj", mimeType="application/octet-stream")]		private var Filter:Class;						public function SquigglevisionFilter():void {			this.shader = new Shader(new Filter());		}		public function set squiggleLength(value:Number):void{			shader.data.squiggleLength.value[0] = value;		}		public function get squiggleLength():Number{			return shader.data.squiggleLength.value[0];		}						public function set squiggleStrength(value:Number):void{			shader.data.squiggleStrength.value[0] = value;		}		public function get squiggleStrength():Number{			return shader.data.squiggleStrength.value[0];		}						public function set animationIndex(value:Number):void{			value = value % int(shader.data.animationIndex.maxValue);			shader.data.animationIndex.value[0] = value +				int(shader.data.animationIndex.minValue);		}		public function get animationIndex():Number{			return shader.data.animationIndex.value[0];		}	}	}