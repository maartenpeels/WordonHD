.class public Leu/alebianco/air/extensions/utils/FREUtils;
.super Ljava/lang/Object;
.source "FREUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ANE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs createRuntimeException(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;)Lcom/adobe/fre/FREObject;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "id"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "data"    # [Ljava/lang/Object;

    .prologue
    .line 35
    const/4 v2, 0x0

    .line 36
    .local v2, "error":Lcom/adobe/fre/FREObject;
    const/4 v3, 0x2

    new-array v0, v3, [Lcom/adobe/fre/FREObject;

    .line 38
    .local v0, "args":[Lcom/adobe/fre/FREObject;
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v4

    aput-object v4, v0, v3

    .line 39
    const/4 v3, 0x1

    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(I)Lcom/adobe/fre/FREObject;

    move-result-object v4

    aput-object v4, v0, v3

    .line 40
    invoke-static {p0, v0}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 44
    :goto_0
    return-object v2

    .line 41
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ANE"

    const-string v4, "Inception Error: Unable to create the runtime exception to notify the application about the previous error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 49
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 50
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 51
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static varargs logEvent(Lcom/adobe/fre/FREContext;Leu/alebianco/air/extensions/utils/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "context"    # Lcom/adobe/fre/FREContext;
    .param p1, "level"    # Leu/alebianco/air/extensions/utils/LogLevel;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 25
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p1}, Leu/alebianco/air/extensions/utils/LogLevel;->getPriority()I

    move-result v1

    const-string v2, "ANE"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p1}, Leu/alebianco/air/extensions/utils/LogLevel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static stripPackageFromClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
