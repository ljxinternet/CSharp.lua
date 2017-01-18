﻿-- Generated by CSharp.lua Compiler 1.0.0.0
local System = System;
System.namespace("CSharpLua.LuaAst", function (namespace) 
    namespace.class("LuaBlockSyntax", function (namespace) 
        local Render, __ctor__;
        Render = function (this, renderer) 
            renderer:Render(this);
        end;
        __ctor__ = function (this) 
            this.Statements = CSharpLua.LuaAst.LuaSyntaxList_1(CSharpLua.LuaAst.LuaStatementSyntax)();
        end;
        return {
            __inherits__ = {
                CSharpLua.LuaAst.LuaStatementSyntax
            }, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaBlockStatementSyntax", function (namespace) 
        local Render, __ctor__;
        Render = function (this, renderer) 
            renderer:Render(this);
        end;
        __ctor__ = function (this) 
            this.OpenBraceToken = "do" --[[Keyword.Do]];
            this.CloseBraceToken = "end" --[[Keyword.End]];
        end;
        return {
            __inherits__ = {
                CSharpLua.LuaAst.LuaBlockSyntax
            }, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
end);
