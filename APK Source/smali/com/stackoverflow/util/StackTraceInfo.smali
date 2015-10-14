.class public Lcom/stackoverflow/util/StackTraceInfo;
.super Ljava/lang/Object;
.source "StackTraceInfo.java"


# static fields
.field private static final CLIENT_CODE_STACK_INDEX:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 29
    .local v1, "i":I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 31
    .local v4, "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v1, v1, 0x1

    .line 32
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/stackoverflow/util/StackTraceInfo;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 37
    .end local v4    # "ste":Ljava/lang/StackTraceElement;
    :cond_0
    sput v1, Lcom/stackoverflow/util/StackTraceInfo;->CLIENT_CODE_STACK_INDEX:I

    .line 38
    return-void

    .line 29
    .restart local v4    # "ste":Ljava/lang/StackTraceElement;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentClassName(I)Ljava/lang/String;
    .locals 2
    .param p0, "offset"    # I

    .prologue
    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    sget v1, Lcom/stackoverflow/util/StackTraceInfo;->CLIENT_CODE_STACK_INDEX:I

    add-int/2addr v1, p0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentFileName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentFileName(I)Ljava/lang/String;
    .locals 4
    .param p0, "offset"    # I

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    sget v3, Lcom/stackoverflow/util/StackTraceInfo;->CLIENT_CODE_STACK_INDEX:I

    add-int/2addr v3, p0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "filename":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    sget v3, Lcom/stackoverflow/util/StackTraceInfo;->CLIENT_CODE_STACK_INDEX:I

    add-int/2addr v3, p0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 70
    .local v1, "lineNumber":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrentFileNameFqn()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 118
    invoke-static {v2}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodNameFqn(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "CurrentMethodNameFqn":Ljava/lang/String;
    invoke-static {v2}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "currentFileName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrentMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentMethodName(I)Ljava/lang/String;
    .locals 2
    .param p0, "offset"    # I

    .prologue
    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    sget v1, Lcom/stackoverflow/util/StackTraceInfo;->CLIENT_CODE_STACK_INDEX:I

    add-int/2addr v1, p0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentMethodNameFqn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodNameFqn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentMethodNameFqn(I)Ljava/lang/String;
    .locals 4
    .param p0, "offset"    # I

    .prologue
    .line 110
    add-int/lit8 v2, p0, 0x1

    invoke-static {v2}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "currentClassName":Ljava/lang/String;
    add-int/lit8 v2, p0, 0x1

    invoke-static {v2}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "currentMethodName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInvokingClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/stackoverflow/util/StackTraceInfo;->getInvokingClassName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInvokingClassName(I)Ljava/lang/String;
    .locals 1
    .param p0, "offset"    # I

    .prologue
    .line 90
    add-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentClassName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInvokingFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/stackoverflow/util/StackTraceInfo;->getInvokingFileName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInvokingFileName(I)Ljava/lang/String;
    .locals 1
    .param p0, "offset"    # I

    .prologue
    .line 100
    add-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentFileName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInvokingFileNameFqn()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 139
    invoke-static {v2}, Lcom/stackoverflow/util/StackTraceInfo;->getInvokingMethodNameFqn(I)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "invokingMethodNameFqn":Ljava/lang/String;
    invoke-static {v2}, Lcom/stackoverflow/util/StackTraceInfo;->getInvokingFileName(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "invokingFileName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getInvokingMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/stackoverflow/util/StackTraceInfo;->getInvokingMethodName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInvokingMethodName(I)Ljava/lang/String;
    .locals 1
    .param p0, "offset"    # I

    .prologue
    .line 80
    add-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Lcom/stackoverflow/util/StackTraceInfo;->getCurrentMethodName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInvokingMethodNameFqn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/stackoverflow/util/StackTraceInfo;->getInvokingMethodNameFqn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInvokingMethodNameFqn(I)Ljava/lang/String;
    .locals 4
    .param p0, "offset"    # I

    .prologue
    .line 131
    add-int/lit8 v2, p0, 0x1

    invoke-static {v2}, Lcom/stackoverflow/util/StackTraceInfo;->getInvokingClassName(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "invokingClassName":Ljava/lang/String;
    add-int/lit8 v2, p0, 0x1

    invoke-static {v2}, Lcom/stackoverflow/util/StackTraceInfo;->getInvokingMethodName(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "invokingMethodName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
