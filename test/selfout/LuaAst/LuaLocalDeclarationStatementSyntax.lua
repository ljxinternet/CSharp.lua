﻿-- Generated by CSharp.lua Compiler 1.0.0.0
local System = System;
System.namespace("CSharpLua.LuaAst", function (namespace) 
    namespace.class("LuaLocalVariablesStatementSyntax", function (namespace) 
        local getLocalKeyword, Render, __ctor__;
        getLocalKeyword = function (this) 
            return "local" --[[Keyword.Local]];
        end;
        Render = function (this, renderer) 
            renderer:Render(this);
        end;
        __ctor__ = function (this) 
            this.Variables = CSharpLua.LuaAst.LuaSyntaxList_1(CSharpLua.LuaAst.LuaIdentifierNameSyntax)();
        end;
        return {
            __inherits__ = {
                CSharpLua.LuaAst.LuaVariableDeclarationSyntax
            }, 
            getLocalKeyword = getLocalKeyword, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaEqualsValueClauseListSyntax", function (namespace) 
        local getEqualsToken, Render, __ctor__;
        getEqualsToken = function (this) 
            return "=" --[[Tokens.Equals]];
        end;
        Render = function (this, renderer) 
            renderer:Render(this);
        end;
        __ctor__ = function (this) 
            this.Values = CSharpLua.LuaAst.LuaSyntaxList_1(CSharpLua.LuaAst.LuaExpressionSyntax)();
        end;
        return {
            __inherits__ = {
                CSharpLua.LuaAst.LuaSyntaxNode
            }, 
            getEqualsToken = getEqualsToken, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaLocalDeclarationStatementSyntax", function (namespace) 
        local Render, __ctor__;
        Render = function (this, renderer) 
            renderer:Render(this);
        end;
        __ctor__ = function (this, declaration) 
            this.Declaration = declaration;
        end;
        return {
            __inherits__ = {
                CSharpLua.LuaAst.LuaStatementSyntax
            }, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaVariableDeclarationSyntax", function (namespace) 
        return {
            __inherits__ = {
                CSharpLua.LuaAst.LuaStatementSyntax
            }
        };
    end);
    namespace.class("LuaVariableListDeclarationSyntax", function (namespace) 
        local Render, __ctor__;
        Render = function (this, renderer) 
            renderer:Render(this);
        end;
        __ctor__ = function (this) 
            this.Variables = CSharpLua.LuaAst.LuaSyntaxList_1(CSharpLua.LuaAst.LuaVariableDeclaratorSyntax)();
        end;
        return {
            __inherits__ = {
                CSharpLua.LuaAst.LuaVariableDeclarationSyntax
            }, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaLocalVariableDeclaratorSyntax", function (namespace) 
        local Render, __ctor__;
        Render = function (this, renderer) 
            renderer:Render(this);
        end;
        __ctor__ = function (this, declarator) 
            if declarator == nil then
                System.throw(System.ArgumentNullException("declarator"));
            end
            this.Declarator = declarator;
        end;
        return {
            __inherits__ = {
                CSharpLua.LuaAst.LuaStatementSyntax
            }, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaVariableDeclaratorSyntax", function (namespace) 
        local getLocalKeyword, Render, __ctor__;
        getLocalKeyword = function (this) 
            return "local" --[[Keyword.Local]];
        end;
        Render = function (this, renderer) 
            renderer:Render(this);
        end;
        __ctor__ = function (this, identifier) 
            if identifier == nil then
                System.throw(System.ArgumentNullException("identifier"));
            end
            this.Identifier = identifier;
        end;
        return {
            __inherits__ = {
                CSharpLua.LuaAst.LuaStatementSyntax
            }, 
            getLocalKeyword = getLocalKeyword, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaEqualsValueClauseSyntax", function (namespace) 
        local getEqualsToken, Render, __ctor__;
        getEqualsToken = function (this) 
            return "=" --[[Tokens.Equals]];
        end;
        Render = function (this, renderer) 
            renderer:Render(this);
        end;
        __ctor__ = function (this, value) 
            if value == nil then
                System.throw(System.ArgumentNullException("value"));
            end
            this.Value = value;
        end;
        return {
            __inherits__ = {
                CSharpLua.LuaAst.LuaSyntaxNode
            }, 
            getEqualsToken = getEqualsToken, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
    namespace.class("LuaTypeLocalAreaSyntax", function (namespace) 
        local getLocalKeyword, Render, __ctor__;
        getLocalKeyword = function (this) 
            return "local" --[[Keyword.Local]];
        end;
        Render = function (this, renderer) 
            renderer:Render(this);
        end;
        __ctor__ = function (this) 
            this.Variables = CSharpLua.LuaAst.LuaSyntaxList_1(CSharpLua.LuaAst.LuaIdentifierNameSyntax)();
        end;
        return {
            __inherits__ = {
                CSharpLua.LuaAst.LuaStatementSyntax
            }, 
            getLocalKeyword = getLocalKeyword, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
end);
