.class public final Lcom/chartboost/sdk/Libraries/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Ljava/lang/Number;)Ljava/math/BigDecimal;
    .locals 4

    .prologue
    .line 122
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    .line 123
    check-cast p0, Ljava/math/BigDecimal;

    move-object v0, p0

    .line 133
    :goto_0
    return-object v0

    .line 124
    :cond_0
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 126
    :cond_1
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 128
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(J)V

    goto :goto_0

    .line 129
    :cond_3
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_4

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_5

    .line 130
    :cond_4
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    goto :goto_0

    .line 133
    :cond_5
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The given number (\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") does not have a parsable string representation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 118
    if-eqz p0, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 68
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const-class v6, Ljava/lang/Number;

    .line 37
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    .line 64
    :goto_0
    return v0

    :cond_0
    move v2, v5

    .line 42
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 43
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v0

    .line 44
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 47
    const-class v3, Ljava/lang/Number;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-class v3, Ljava/lang/Number;

    invoke-virtual {v6, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v0, v5

    .line 48
    goto :goto_0

    .line 51
    :cond_2
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_3

    .line 52
    check-cast v0, Lorg/json/JSONObject;

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v5

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_4

    .line 56
    check-cast v0, Lorg/json/JSONArray;

    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v5

    .line 58
    goto :goto_0

    .line 60
    :cond_4
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v5

    .line 61
    goto :goto_0

    .line 42
    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 64
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-class v8, Ljava/lang/Number;

    .line 72
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 74
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 114
    :goto_0
    return v0

    .line 76
    :catch_0
    move-exception v0

    move v0, v6

    .line 77
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    .line 83
    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v7

    .line 85
    goto :goto_0

    :cond_1
    move v3, v6

    .line 87
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_8

    .line 88
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 92
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v6

    .line 94
    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 97
    const-class v4, Ljava/lang/Number;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-class v4, Ljava/lang/Number;

    invoke-virtual {v8, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    move v0, v6

    .line 98
    goto :goto_0

    .line 101
    :cond_4
    instance-of v4, v0, Lorg/json/JSONObject;

    if-eqz v4, :cond_5

    .line 102
    check-cast v0, Lorg/json/JSONObject;

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v6

    .line 104
    goto :goto_0

    .line 105
    :cond_5
    instance-of v4, v0, Lorg/json/JSONArray;

    if-eqz v4, :cond_6

    .line 106
    check-cast v0, Lorg/json/JSONArray;

    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->a(Lorg/json/JSONArray;Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v6

    .line 108
    goto :goto_0

    .line 110
    :cond_6
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v6

    .line 111
    goto :goto_0

    .line 87
    :cond_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_8
    move v0, v7

    .line 114
    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v2, Ljava/lang/Number;

    .line 142
    if-eqz p0, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v1, :cond_3

    .line 143
    :cond_0
    if-eqz p1, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v1, :cond_2

    :cond_1
    move v1, v4

    .line 150
    :goto_0
    return v1

    :cond_2
    move v1, v3

    .line 143
    goto :goto_0

    .line 144
    :cond_3
    const-class v1, Ljava/lang/Number;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-class v1, Ljava/lang/Number;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 146
    :try_start_0
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/i;->a(Ljava/lang/Number;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_4

    move v1, v4

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_0

    .line 147
    :catch_0
    move-exception v1

    .line 150
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method
