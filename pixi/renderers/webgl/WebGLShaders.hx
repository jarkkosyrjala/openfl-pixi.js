package pixi.renderers.webgl;
/**
 * @author Mat Groves http://matgroves.com/ @Doormat23
 */


/*
 * the default suoer fast shader!
 */
import js.html.webgl.Shader;
import js.html.webgl.Program;
class WebGLShaders
{
    @:native("PIXI.shaderFragmentSrc")
    extern static var shaderFragmentSrc:Arrays<String>;

    @:native("PIXI.shaderVertexSrc")
    extern static var shaderVertexSrc:Arrays<String>;

    /*
     * the triangle strip shader..
     */

    @:native("PIXI.stripShaderFragmentSrc")
    extern static var stripShaderFragmentSrc:Arrays<String>;

    @:native("PIXI.stripShaderVertexSrc")
    extern static var stripShaderVertexSrc:Arrays<String>;

    /*
     * primitive shader..
     */

    @:native("PIXI.primitiveShaderFragmentSrc")
    extern static var primitiveShaderFragmentSrc:Arrays<String>;

    @:native("PIXI.primitiveShaderVertexSrc")
    extern static var primitiveShaderVertexSrc:Arrays<String>;

    @:native("PIXI.initPrimitiveShader")
    extern static function initPrimitiveShader():Void;

    @:native("PIXI.initDefaultShader")
    extern static function initDefaultShader():Void;

    @:native("PIXI.initDefaultStripShader")
    extern static function initDefaultStripShader():Void;

    @:native("PIXI.CompileVertexShader")
    extern static function compileVertexShader(gl:RenderingContext, shaderSrc:Array<String>):Shader;

    @:native("PIXI.CompileFragmentShader")
    extern static function compileFragmentShader(gl:RenderingContext, shaderSrc:Array<String>):Shader;

    @:native("PIXI.compileProgram")
    extern static function compileProgram(vertexSrc:Array<String>, fragmentSrc:Array<String>):Program;

    @:native("PIXI.activateDefaultShader")
    extern static function activateDefaultShader():Void;

    @:native("PIXI.activatePrimitiveShader")
    extern static function activatePrimitiveShader():Void;


}