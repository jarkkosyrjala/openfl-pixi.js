package pixi.core;

/*
 * A lighter version of the rad gl-matrix created by Brandon Jones, Colin MacKenzie IV
 * you both rock!
 */
@:native("PIXI.Matrix")
extern class Matrix
{
    function new(length:int):Void;

    //Private?
    function determineMatrixArrayType():Dynamic; // Float32Array || Array;

    //PIXI.mat3 = {};

    @:native("PIXI.mat3.create")
    extern static function mat3Create():Matrix;

    @:native("PIXI.mat3.multiply")
    extern static function mat3Multiply(mat:Matrix, mat2:Matrix, ?dest:Matrix):Matrix;

    @:native("PIXI.mat3.clone")
    extern static function mat3Clone(mat:Matrix):Matrix;

    @:native("PIXI.mat3.transpose")
    extern static function mat3Transpose(mat:Matrix,?dest:Matrix):Matrix;

    @:native("PIXI.mat3.toMat4")
    extern static function mat3ToMat4(mat:Matrix, ?dest:Matrix):Matrix;

    /////
    @:native("PIXI.mat4.create")
    extern static function mat4Create():Matrix;

    @:native("PIXI.mat4.multiply")
    extern static function mat4Multiply(mat:Matrix, mat2:Matrix, ?dest:Matrix):Matrix;


    @:native("PIXI.mat4.transpose")
    extern static function mat4Transpose(mat:Matrix,?dest:Matrix):Matrix;


}