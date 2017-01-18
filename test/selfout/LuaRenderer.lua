﻿-- Generated by CSharp.lua Compiler 1.0.0.0
local System = System;
System.namespace("CSharpLua", function (namespace) 
    namespace.class("LuaRenderer", function (namespace) 
        local getSetting, IsEnumExport, AddIndent, Outdent, WriteNewLine, WriteComma, WriteSpace, Write, 
        Write, Render, Render, Render, Render, Render, Render, Render, 
        WriteSeparatedSyntaxList, WriteArgumentList, Render, Render, Render, Render, Render, Render, 
        Render, Render, Render, Render, WriteEquals, Render, Render, Render, 
        Render, Render, Render, Render, Render, Render, Render, Render, 
        Render, Render, Render, Render, Render, Render, Render, Render, 
        Render, Render, Render, Render, Render, Render, Render, Render, 
        Render, Render, Render, Render, Render, Render, Render, Render, 
        Render, Render, Render, Render, Render, Render, Render, Render, 
        __ctor__;
        getSetting = function (this) 
            return this.generator_.Setting;
        end;
        IsEnumExport = function (this, fullName) 
            return this.generator_:IsEnumExport(fullName);
        end;
        AddIndent = function (this) 
            this.indentLevel_ = this.indentLevel_ + 1;
        end;
        Outdent = function (this) 
            if this.indentLevel_ == 0 then
                System.throw(System.InvalidOperationException());
            end
            this.indentLevel_ = this.indentLevel_ - 1;
        end;
        WriteNewLine = function (this) 
            this.writer_:Write(10 --[['\n']]);
            this.isNewLine_ = true;
        end;
        WriteComma = function (this) 
            Write(this, ", ");
        end;
        WriteSpace = function (this) 
            Write(this, " ");
        end;
        Write = function (this, value) 
            if this.isNewLine_ then
                do
                    local i = 0;
                    while i < this.indentLevel_ do
                        this.writer_:Write(getSetting(this).IndentString);
                        i = i + 1;
                    end
                end
                this.isNewLine_ = false;
            end
            this.writer_:Write(value);
        end;
        Write = function (this, semicolonToken) 
            if getSetting(this).HasSemicolon then
                Write(this, semicolonToken:ToString());
            end
        end;
        Render = function (this, node) 
            for _, statement in System.each(node.Statements) do
                statement:Render(this);
            end
        end;
        Render = function (this, node) 
            node.Statement:Render(this);
        end;
        Render = function (this, node) 
            node.Expression:Render(this);
            Write(this, node:getSemicolonToken());
            WriteNewLine(this);
        end;
        Render = function (this, node) 
            node.Expression:Render(this);
            Write(this, node.OperatorToken);
            node.Name:Render(this);
        end;
        Render = function (this, node) 
            node.Expression:Render(this);
            node.ArgumentList:Render(this);
        end;
        Render = function (this, node) 
            Write(this, node.ValueText);
        end;
        Render = function (this, node) 
            Write(this, node:getPrefixToken());
            Write(this, node.ValueText);
        end;
        WriteSeparatedSyntaxList = function (this, list) 
            local isFirst = true;
            for _, node in System.each(list) do
                if isFirst then
                    isFirst = false;
                else
                    WriteComma(this);
                end
                node:Render(this);
            end
        end;
        WriteArgumentList = function (this, openParenToken, list, closeParenToken) 
            Write(this, openParenToken);
            WriteSeparatedSyntaxList(this, list);
            Write(this, closeParenToken);
        end;
        Render = function (this, node) 
            WriteArgumentList(this, node:getOpenParenToken(), node.Arguments, node:getCloseParenToken());
        end;
        Render = function (this, node) 
            node.Expression:Render(this);
        end;
        Render = function (this, node) 
            Write(this, node:getFunctionKeyword());
            WriteSpace(this);
            node.ParameterList:Render(this);
            WriteSpace(this);
            node.Body:Render(this);
        end;
        Render = function (this, node) 
            local function_ = node.FunctionExpress;
            Write(this, function_:getFunctionKeyword());
            WriteSpace(this);
            function_.ParameterList:Render(this);
            WriteSpace(this);
            local returnStatement = System.cast(CSharpLua.LuaAst.LuaReturnStatementSyntax, CSharpLua.Utility.First(function_.Body.Statements, CSharpLua.LuaAst.LuaStatementSyntax));
            Write(this, returnStatement:getReturnKeyword());
            WriteSpace(this);
            returnStatement.Expression:Render(this);
            Write(this, returnStatement:getSemicolonToken());
            WriteSpace(this);
            Write(this, node:getEndToken());
        end;
        Render = function (this, node) 
            WriteArgumentList(this, node:getOpenParenToken(), node.Parameters, node:getCloseParenToken());
        end;
        Render = function (this, node) 
            node.Identifier:Render(this);
        end;
        Render = function (this, node) 
            Write(this, node.OpenBraceToken);
            WriteNewLine(this);
            AddIndent(this);
            for _, statement in System.each(node.Statements) do
                statement:Render(this);
            end
            Outdent(this);
            Write(this, node.CloseBraceToken);
        end;
        Render = function (this, node) 
            Render(this, node);
            WriteNewLine(this);
        end;
        Render = function (this, node) 
            node.Identifier:Render(this);
        end;
        Render = function (this, node) 
            Write(this, node:getOpenParenToken());
            node.Identifier:Render(this);
            Write(this, node:getCloseParenToken());
        end;
        WriteEquals = function (this, count) 
            do
                local i = 0;
                while i < count do
                    Write(this, "=" --[[Tokens.Equals]]);
                    i = i + 1;
                end
            end
        end;
        Render = function (this, node) 
            Write(this, node:getOpenBracket());
            WriteEquals(this, node.EqualsCount);
            Write(this, node:getOpenBracket());
            Write(this, node:getText());
            Write(this, node:getCloseBracket());
            WriteEquals(this, node.EqualsCount);
            Write(this, node:getCloseBracket());
        end;
        Render = function (this, node) 
            node.Value:Render(this);
            WriteSpace(this);
            Write(this, node:getOpenComment());
            Write(this, node.IdentifierToken);
            Write(this, node:getCloseComment());
        end;
        Render = function (this, node) 
            for _, statement in System.each(node.Statements) do
                statement:Render(this);
            end
        end;
        Render = function (this, node) 
            if #node.Variables > 0 then
                Write(this, node:getLocalKeyword());
                WriteSpace(this);
                WriteSeparatedSyntaxList(this, node.Variables);
                System.access(node.Initializer, function (default) return this:Render; end(this, this));
                Write(this, node:getSemicolonToken());
                WriteNewLine(this);
            end
        end;
        Render = function (this, node) 
            WriteSpace(this);
            Write(this, node:getEqualsToken());
            WriteSpace(this);
            WriteSeparatedSyntaxList(this, node.Values);
        end;
        Render = function (this, node) 
            node.Left:Render(this);
            WriteSpace(this);
            Write(this, node:getOperatorToken());
            WriteSpace(this);
            node.Right:Render(this);
        end;
        Render = function (this, node) 
            assert(#node.Lefts > 0 and #node.Rights > 0);
            WriteSeparatedSyntaxList(this, node.Lefts);
            WriteSpace(this);
            Write(this, node:getOperatorToken());
            WriteSpace(this);
            WriteSeparatedSyntaxList(this, node.Rights);
        end;
        Render = function (this, node) 
            local isFirst = true;
            for _, assignment in System.each(node.Assignments) do
                if isFirst then
                    isFirst = false;
                else
                    Write(this, CSharpLua.LuaAst.LuaSyntaxNode.CSharpLua.LuaAst.Tokens.Semicolon);
                    WriteSpace(this);
                end
                assignment:Render(this);
            end
        end;
        Render = function (this, node) 
            Write(this, node:getReturnKeyword());
            if #node.Expressions > 0 then
                WriteSpace(this);
                WriteSeparatedSyntaxList(this, node.Expressions);
            end
            Write(this, node:getSemicolonToken());
            WriteNewLine(this);
        end;
        Render = function (this, node) 
            Write(this, node:getReturnKeyword());
            if node.Expression ~= nil then
                WriteSpace(this);
                node.Expression:Render(this);
            end
            Write(this, node:getSemicolonToken());
            WriteNewLine(this);
        end;
        Render = function (this, node) 
            Write(this, node:getOpenBraceToken());
            if #node.Items > 0 then
                WriteNewLine(this);
                AddIndent(this);
                local isFirst = true;
                for _, itemNode in System.each(node.Items) do
                    if isFirst then
                        isFirst = false;
                    else
                        WriteComma(this);
                        WriteNewLine(this);
                    end
                    itemNode:Render(this);
                end
                Outdent(this);
                WriteNewLine(this);
            end
            Write(this, node:getCloseBraceToken());
        end;
        Render = function (this, node) 
            node.Expression:Render(this);
        end;
        Render = function (this, node) 
            node.Key:Render(this);
            WriteSpace(this);
            Write(this, node:getOperatorToken());
            WriteSpace(this);
            node.Value:Render(this);
        end;
        Render = function (this, node) 
            Write(this, node:getOpenBracketToken());
            node.Expression:Render(this);
            Write(this, node:getCloseBracketToken());
        end;
        Render = function (this, node) 
            node.Identifier:Render(this);
        end;
        Render = function (this, node) 
            node.Expression:Render(this);
            Write(this, node:getOpenBracketToken());
            node.Index:Render(this);
            Write(this, node:getCloseBracketToken());
        end;
        Render = function (this, node) 
            WriteSpace(this);
            Write(this, node:getEqualsToken());
            WriteSpace(this);
            node.Value:Render(this);
        end;
        Render = function (this, node) 
            node.Declaration:Render(this);
        end;
        Render = function (this, node) 
            if #node.Variables > 0 then
                local isFirst = true;
                for _, variable in System.each(node.Variables) do
                    if isFirst then
                        isFirst = false;
                    else
                        WriteSpace(this);
                    end
                    variable:Render(this);
                end
                WriteNewLine(this);
            end
        end;
        Render = function (this, node) 
            Write(this, node:getLocalKeyword());
            WriteSpace(this);
            node.Identifier:Render(this);
            System.access(node.Initializer, function (default) return this:Render; end(this, this));
            Write(this, node:getSemicolonToken());
        end;
        Render = function (this, node) 
            node.Declarator:Render(this);
            WriteNewLine(this);
        end;
        Render = function (this, node) 
            local kPerLineCount = 8;
            if #node.Variables > 0 then
                Write(this, node:getLocalKeyword());
                WriteSpace(this);
                local count = 0;
                for _, item in System.each(node.Variables) do
                    if count > 0 then
                        WriteComma(this);
                        if count % kPerLineCount == 0 then
                            WriteNewLine(this);
                        end
                    end
                    item:Render(this);
                    count = count + 1;
                end
                Write(this, node:getSemicolonToken());
                WriteNewLine(this);
            end
        end;
        Render = function (this, node) 
            node.Left:Render(this);
            WriteSpace(this);
            Write(this, node.OperatorToken);
            WriteSpace(this);
            node.Right:Render(this);
        end;
        Render = function (this, node) 
            Write(this, node:getIfKeyword());
            WriteSpace(this);
            node.Condition:Render(this);
            WriteSpace(this);
            Write(this, node:getOpenParenToken());
            node.Body:Render(this);
            for _, elseIfNode in System.each(node.ElseIfStatements) do
                elseIfNode:Render(this);
            end
            System.access(node.Else, function (default) return this:Render; end(this, this));
            Write(this, node:getCloseParenToken());
            WriteNewLine(this);
        end;
        Render = function (this, node) 
            Write(this, node:getElseIfKeyword());
            WriteSpace(this);
            node.Condition:Render(this);
            WriteSpace(this);
            Write(this, node:getOpenParenToken());
            node.Body:Render(this);
        end;
        Render = function (this, node) 
            Write(this, node:getElseKeyword());
            node.Body:Render(this);
        end;
        Render = function (this, node) 
            Write(this, node.OperatorToken);
            WriteSpace(this);
            node.Operand:Render(this);
        end;
        Render = function (this, node) 
            Write(this, node:getForKeyword());
            WriteSpace(this);
            node:getPlaceholder():Render(this);
            WriteComma(this);
            node.Identifier:Render(this);
            WriteSpace(this);
            Write(this, node:getInKeyword());
            WriteSpace(this);
            node.Expression:Render(this);
            WriteSpace(this);
            node.Body:Render(this);
            WriteNewLine(this);
        end;
        Render = function (this, node) 
            Write(this, node:getWhileKeyword());
            WriteSpace(this);
            node.Condition:Render(this);
            WriteSpace(this);
            node.Body:Render(this);
            WriteNewLine(this);
        end;
        Render = function (this, node) 
            Write(this, node:getRepeatKeyword());
            node.Body:Render(this);
            Write(this, node:getUntilKeyword());
            WriteSpace(this);
            node.Condition:Render(this);
            Write(this, node:getSemicolonToken());
            WriteNewLine(this);
        end;
        Render = function (this, node) 
            node.RepeatStatement:Render(this);
        end;
        Render = function (this, node) 
            Write(this, node:getIfKeyword());
            WriteSpace(this);
            node.Condition:Render(this);
            WriteSpace(this);
            Write(this, node:getOpenParenToken());
            WriteSpace(this);
            node.Assignment:Render(this);
            WriteSpace(this);
            Write(this, node:getCloseParenToken());
            WriteNewLine(this);
        end;
        Render = function (this, node) 
            Write(this, node:getBreakKeyword());
            Write(this, node:getSemicolonToken());
            WriteNewLine(this);
        end;
        Render = function (this, node) 
            node.Assignment:Render(this);
            node:getBreak():Render(this);
        end;
        Render = function (this, node) 
            do
                local i = 0;
                while i < node.Count do
                    WriteNewLine(this);
                    i = i + 1;
                end
            end
        end;
        Render = function (this, node) 
            Write(this, node:getSingleCommentToken());
            Write(this, node.Comment);
            WriteNewLine(this);
        end;
        Render = function (this, node) 
            Write(this, node:getOpenCommentToken());
            Write(this, node.Comment);
            Write(this, node:getCloseCommentToken());
            WriteNewLine(this);
        end;
        Render = function (this, node) 
            Write(this, node:getOpenParenToken());
            node.Expression:Render(this);
            Write(this, node:getCloseParenToken());
        end;
        Render = function (this, node) 
            Write(this, node:getGotoKeyword());
            WriteSpace(this);
            node.Identifier:Render(this);
            Write(this, node:getSemicolonToken());
            WriteNewLine(this);
        end;
        Render = function (this, node) 
            Write(this, node:getPrefixToken());
            node.Identifier:Render(this);
            Write(this, node:getSuffixToken());
            Write(this, node:getSemicolonToken());
            WriteNewLine(this);
            System.access(node.Statement, function (default) return this:Render; end(this, this));
        end;
        Render = function (this, node) 
            node.Assignment:Render(this);
            node.GotoStatement:Render(this);
        end;
        Render = function (this, node) 
            for _, code in System.each(node.Codes) do
                code:Render(this);
            end
        end;
        Render = function (this, node) 
            WriteSeparatedSyntaxList(this, node.Expressions);
        end;
        __ctor__ = function (this, generator, writer) 
            this.generator_ = generator;
            this.writer_ = writer;
        end;
        return {
            isNewLine_ = False, 
            indentLevel_ = 0, 
            IsEnumExport = IsEnumExport, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            Render = Render, 
            __ctor__ = __ctor__
        };
    end);
end);
