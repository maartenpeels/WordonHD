.class public Lcom/chartboost/sdk/impl/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 110
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 113
    :goto_0
    return-wide v0

    .line 111
    :catch_0
    move-exception v0

    .line 113
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/chartboost/sdk/impl/i;)Lcom/chartboost/sdk/impl/b$a;
    .locals 14

    .prologue
    const/4 v8, 0x0

    const-wide/16 v12, 0x0

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 42
    iget-object v3, p0, Lcom/chartboost/sdk/impl/i;->c:Ljava/util/Map;

    .line 53
    const-string v0, "Date"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    if-eqz v0, :cond_a

    .line 55
    invoke-static {v0}, Lcom/chartboost/sdk/impl/y;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 58
    :goto_0
    const-string v0, "Cache-Control"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 59
    if-eqz v0, :cond_9

    .line 60
    const/4 v6, 0x1

    .line 61
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v7, v8

    move-wide v8, v12

    .line 62
    :goto_1
    array-length v10, v0

    if-lt v7, v10, :cond_0

    move-wide v7, v8

    .line 77
    :goto_2
    const-string v0, "Expires"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    if-eqz v0, :cond_8

    .line 79
    invoke-static {v0}, Lcom/chartboost/sdk/impl/y;->a(Ljava/lang/String;)J

    move-result-wide v9

    .line 82
    :goto_3
    const-string v0, "ETag"

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    if-eqz v6, :cond_6

    .line 87
    const-wide/16 v9, 0x3e8

    mul-long v6, v7, v9

    add-long/2addr v1, v6

    .line 93
    :goto_4
    new-instance v6, Lcom/chartboost/sdk/impl/b$a;

    invoke-direct {v6}, Lcom/chartboost/sdk/impl/b$a;-><init>()V

    .line 94
    iget-object v7, p0, Lcom/chartboost/sdk/impl/i;->b:[B

    iput-object v7, v6, Lcom/chartboost/sdk/impl/b$a;->a:[B

    .line 95
    iput-object v0, v6, Lcom/chartboost/sdk/impl/b$a;->b:Ljava/lang/String;

    .line 96
    iput-wide v1, v6, Lcom/chartboost/sdk/impl/b$a;->e:J

    .line 97
    iget-wide v0, v6, Lcom/chartboost/sdk/impl/b$a;->e:J

    iput-wide v0, v6, Lcom/chartboost/sdk/impl/b$a;->d:J

    .line 98
    iput-wide v4, v6, Lcom/chartboost/sdk/impl/b$a;->c:J

    .line 99
    iput-object v3, v6, Lcom/chartboost/sdk/impl/b$a;->f:Ljava/util/Map;

    move-object v0, v6

    .line 101
    :goto_5
    return-object v0

    .line 63
    :cond_0
    aget-object v10, v0, v7

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 64
    const-string v11, "no-cache"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "no-store"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_5

    .line 66
    :cond_2
    const-string v11, "max-age="

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 68
    const/16 v11, 0x8

    :try_start_0
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 62
    :cond_3
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 71
    :cond_4
    const-string v11, "must-revalidate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, "proxy-revalidate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    :cond_5
    move-wide v8, v12

    .line 72
    goto :goto_6

    .line 88
    :cond_6
    cmp-long v6, v4, v12

    if-lez v6, :cond_7

    cmp-long v6, v9, v4

    if-ltz v6, :cond_7

    .line 90
    sub-long v6, v9, v4

    add-long/2addr v1, v6

    goto :goto_4

    .line 69
    :catch_0
    move-exception v10

    goto :goto_6

    :cond_7
    move-wide v1, v12

    goto :goto_4

    :cond_8
    move-wide v9, v12

    goto :goto_3

    :cond_9
    move v6, v8

    move-wide v7, v12

    goto/16 :goto_2

    :cond_a
    move-wide v4, v12

    goto/16 :goto_0
.end method
