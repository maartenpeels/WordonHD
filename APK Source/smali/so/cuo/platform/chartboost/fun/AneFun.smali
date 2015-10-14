.class public abstract Lso/cuo/platform/chartboost/fun/AneFun;
.super Ljava/lang/Object;
.source "AneFun.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2
    .param p1, "arg0"    # Lcom/adobe/fre/FREContext;
    .param p2, "arg1"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 19
    :try_start_0
    check-cast p1, Lso/cuo/platform/chartboost/ChartboostContext;

    .end local p1    # "arg0":Lcom/adobe/fre/FREContext;
    invoke-virtual {p0, p1, p2}, Lso/cuo/platform/chartboost/fun/AneFun;->doCall(Lso/cuo/platform/chartboost/ChartboostContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 23
    :goto_0
    return-object v1

    .line 20
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 21
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected doCall(Lso/cuo/platform/chartboost/ChartboostContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 1
    .param p1, "ctx"    # Lso/cuo/platform/chartboost/ChartboostContext;
    .param p2, "ps"    # [Lcom/adobe/fre/FREObject;

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBoolean([Lcom/adobe/fre/FREObject;I)Z
    .locals 4
    .param p1, "ps"    # [Lcom/adobe/fre/FREObject;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 58
    if-ltz p2, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_1

    :cond_0
    move v1, v3

    .line 80
    :goto_0
    return v1

    .line 61
    :cond_1
    aget-object v1, p1, p2

    if-nez v1, :cond_2

    move v1, v3

    .line 62
    goto :goto_0

    .line 65
    :cond_2
    :try_start_0
    aget-object v1, p1, p2

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsBool()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 68
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 79
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    const-string v1, "ane"

    const-string v2, "error getBoolean"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 80
    goto :goto_0

    .line 69
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 71
    .local v0, "e":Lcom/adobe/fre/FRETypeMismatchException;
    invoke-virtual {v0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    goto :goto_1

    .line 72
    .end local v0    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 74
    .local v0, "e":Lcom/adobe/fre/FREInvalidObjectException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    goto :goto_1

    .line 75
    .end local v0    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 77
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_1
.end method

.method protected getInt([Lcom/adobe/fre/FREObject;I)I
    .locals 4
    .param p1, "ps"    # [Lcom/adobe/fre/FREObject;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 32
    if-ltz p2, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_1

    :cond_0
    move v1, v3

    .line 54
    :goto_0
    return v1

    .line 35
    :cond_1
    aget-object v1, p1, p2

    if-nez v1, :cond_2

    move v1, v3

    .line 36
    goto :goto_0

    .line 39
    :cond_2
    :try_start_0
    aget-object v1, p1, p2

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsInt()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 42
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 53
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    const-string v1, "ane"

    const-string v2, "error getInt"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 54
    goto :goto_0

    .line 43
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 45
    .local v0, "e":Lcom/adobe/fre/FRETypeMismatchException;
    invoke-virtual {v0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    goto :goto_1

    .line 46
    .end local v0    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 48
    .local v0, "e":Lcom/adobe/fre/FREInvalidObjectException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    goto :goto_1

    .line 49
    .end local v0    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 51
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_1
.end method

.method protected getString([Lcom/adobe/fre/FREObject;I)Ljava/lang/String;
    .locals 4
    .param p1, "ps"    # [Lcom/adobe/fre/FREObject;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 84
    if-ltz p2, :cond_0

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_1

    :cond_0
    move-object v1, v3

    .line 106
    :goto_0
    return-object v1

    .line 87
    :cond_1
    aget-object v1, p1, p2

    if-nez v1, :cond_2

    move-object v1, v3

    .line 88
    goto :goto_0

    .line 91
    :cond_2
    :try_start_0
    aget-object v1, p1, p2

    invoke-virtual {v1}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/adobe/fre/FRETypeMismatchException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/adobe/fre/FREInvalidObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 94
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 105
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    const-string v1, "ane"

    const-string v2, "error getString"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v3

    .line 106
    goto :goto_0

    .line 95
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 97
    .local v0, "e":Lcom/adobe/fre/FRETypeMismatchException;
    invoke-virtual {v0}, Lcom/adobe/fre/FRETypeMismatchException;->printStackTrace()V

    goto :goto_1

    .line 98
    .end local v0    # "e":Lcom/adobe/fre/FRETypeMismatchException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 100
    .local v0, "e":Lcom/adobe/fre/FREInvalidObjectException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREInvalidObjectException;->printStackTrace()V

    goto :goto_1

    .line 101
    .end local v0    # "e":Lcom/adobe/fre/FREInvalidObjectException;
    :catch_3
    move-exception v1

    move-object v0, v1

    .line 103
    .local v0, "e":Lcom/adobe/fre/FREWrongThreadException;
    invoke-virtual {v0}, Lcom/adobe/fre/FREWrongThreadException;->printStackTrace()V

    goto :goto_1
.end method
