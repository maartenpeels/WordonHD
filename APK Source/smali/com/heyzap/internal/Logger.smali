.class public Lcom/heyzap/internal/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field static ENABLED:Z

.field static ONLY_TEMP_LOG:Z

.field static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/heyzap/internal/Logger;->ONLY_TEMP_LOG:Z

    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    .line 12
    const-string v0, "HeyzapSDK"

    sput-object v0, Lcom/heyzap/internal/Logger;->tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-nez v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 25
    :cond_0
    if-eqz p0, :cond_1

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_1
    const-string v0, "NULL"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-nez v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 34
    :cond_0
    if-eqz p0, :cond_1

    .line 35
    sget-object v0, Lcom/heyzap/internal/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    :cond_1
    const-string v0, "NULL"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 67
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/heyzap/internal/Logger$1;

    invoke-direct {v1, p0}, Lcom/heyzap/internal/Logger$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 21
    return-void
.end method

.method public static log(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    invoke-static {p0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    invoke-static {p0}, Lcom/heyzap/internal/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs log([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 84
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ONLY_TEMP_LOG:Z

    if-nez v0, :cond_0

    .line 87
    if-nez p0, :cond_2

    .line 88
    const-string v0, "null arguments"

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 93
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v2, v1, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 96
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs t([Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 72
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v2, v1, 0x1

    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 75
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static trace()V
    .locals 1

    .prologue
    .line 102
    const-string v0, ""

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->trace(Ljava/lang/Object;)V

    return-void
.end method

.method public static trace(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 46
    sget-boolean v0, Lcom/heyzap/internal/Logger;->ENABLED:Z

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v1, "Stack Trace: %s\n"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    move v2, v8

    .line 50
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 51
    aget-object v3, v1, v2

    .line 52
    const-string v4, "\t%s:%d in %s.%s\n"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static trace(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 59
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 60
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {v0}, Lcom/heyzap/internal/Logger;->log(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    const-string v0, "HeyzapSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method
