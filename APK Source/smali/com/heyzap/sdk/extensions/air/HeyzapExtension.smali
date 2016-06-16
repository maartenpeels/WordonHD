.class public Lcom/heyzap/sdk/extensions/air/HeyzapExtension;
.super Ljava/lang/Object;
.source "HeyzapExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field private static PRINT_LOG:Ljava/lang/Boolean;

.field private static TAG:Ljava/lang/String;

.field public static context:Lcom/adobe/fre/FREContext;

.field public static contexts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "Heyzap"

    sput-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->TAG:Ljava/lang/String;

    .line 16
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->PRINT_LOG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext(Ljava/lang/String;)Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->contexts:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->contexts:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;

    move-object v0, p0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->PRINT_LOG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    sget-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->contexts:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 47
    sget-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->contexts:Ljava/util/HashMap;

    const-string v1, "main"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;

    .line 48
    if-eqz v0, :cond_1

    .line 49
    const-string v1, "LOGGING"

    invoke-virtual {v0, v1, p0}, Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_1
    return-void
.end method

.method public static log(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const-string v5, "LOGGING"

    const-string v4, "Exception: "

    .line 64
    if-nez p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    sget-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->PRINT_LOG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_2
    sget-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->PRINT_LOG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Throwable;)V

    .line 71
    :cond_3
    sget-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->contexts:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 73
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 74
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 75
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    sget-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->contexts:Ljava/util/HashMap;

    const-string v2, "main"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;

    .line 78
    if-eqz v0, :cond_0

    .line 79
    const-string v2, "LOGGING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "LOGGING"

    invoke-virtual {v0, v5, v1}, Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->contexts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;

    .line 25
    if-nez p0, :cond_0

    .line 26
    invoke-static {p1}, Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext$Factory;->build(Ljava/lang/String;)Lcom/heyzap/sdk/extensions/air/HeyzapExtensionContext;

    move-result-object v0

    .line 27
    sget-object v1, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->contexts:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->contexts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 36
    return-void
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/heyzap/sdk/extensions/air/HeyzapExtension;->contexts:Ljava/util/HashMap;

    .line 40
    return-void
.end method
