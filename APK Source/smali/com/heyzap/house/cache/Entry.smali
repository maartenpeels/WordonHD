.class public Lcom/heyzap/house/cache/Entry;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/heyzap/house/cache/Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private createdTime:J

.field private dirty:Ljava/lang/Boolean;

.field private expiry:J

.field private fileName:Ljava/lang/String;

.field private identifier:Ljava/lang/String;

.field private lastUsedTime:J

.field private lengthBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/heyzap/house/cache/Entry;->expiry:J

    .line 19
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/cache/Entry;->dirty:Ljava/lang/Boolean;

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heyzap/house/cache/Entry;->createdTime:J

    .line 23
    invoke-virtual {p0}, Lcom/heyzap/house/cache/Entry;->touch()V

    .line 24
    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/heyzap/house/cache/Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/heyzap/house/cache/Entry;

    invoke-direct {v0}, Lcom/heyzap/house/cache/Entry;-><init>()V

    .line 112
    const-string v1, "dirty"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/heyzap/house/cache/Entry;->dirty:Ljava/lang/Boolean;

    .line 113
    const-string v1, "expiry"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/heyzap/house/cache/Entry;->expiry:J

    .line 114
    const-string v1, "last_used_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/heyzap/house/cache/Entry;->lastUsedTime:J

    .line 115
    const-string v1, "file_name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/heyzap/house/cache/Entry;->fileName:Ljava/lang/String;

    .line 116
    const-string v1, "created_time"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/heyzap/house/cache/Entry;->createdTime:J

    .line 117
    const-string v1, "identifier"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/heyzap/house/cache/Entry;->identifier:Ljava/lang/String;

    .line 119
    return-object v0
.end method


# virtual methods
.method public asJSONObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 98
    const-string v1, "file_name"

    iget-object v2, p0, Lcom/heyzap/house/cache/Entry;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v1, "length_bytes"

    iget-wide v2, p0, Lcom/heyzap/house/cache/Entry;->lengthBytes:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 100
    const-string v1, "last_used_time"

    iget-wide v2, p0, Lcom/heyzap/house/cache/Entry;->lastUsedTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 101
    const-string v1, "created_time"

    iget-wide v2, p0, Lcom/heyzap/house/cache/Entry;->createdTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 102
    const-string v1, "expiry"

    iget-wide v2, p0, Lcom/heyzap/house/cache/Entry;->expiry:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 103
    const-string v1, "identifier"

    iget-object v2, p0, Lcom/heyzap/house/cache/Entry;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v1, "dirty"

    iget-object v2, p0, Lcom/heyzap/house/cache/Entry;->dirty:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v1, "klass"

    const-class v2, Lcom/heyzap/house/cache/Entry;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    return-object v0
.end method

.method public compareTo(Lcom/heyzap/house/cache/Entry;)I
    .locals 6

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/heyzap/house/cache/Entry;->lastUsedTime:J

    invoke-virtual {p1}, Lcom/heyzap/house/cache/Entry;->getLastUsedTime()J

    move-result-wide v2

    const-wide/16 v4, 0x14

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/heyzap/house/cache/Entry;

    invoke-virtual {p0, p1}, Lcom/heyzap/house/cache/Entry;->compareTo(Lcom/heyzap/house/cache/Entry;)I

    move-result v0

    return v0
.end method

.method public deleteHardReference()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-virtual {p0}, Lcom/heyzap/house/cache/Entry;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/heyzap/house/cache/Entry;->dirty:Ljava/lang/Boolean;

    .line 86
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public final fileExists()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/heyzap/house/cache/Entry;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final getFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/heyzap/house/cache/Entry;->fileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    return-object v0
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/heyzap/house/cache/Entry;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/heyzap/house/cache/Entry;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastUsedTime()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/heyzap/house/cache/Entry;->lastUsedTime:J

    return-wide v0
.end method

.method public final getSize()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/heyzap/house/cache/Entry;->lengthBytes:J

    return-wide v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/heyzap/house/cache/Entry;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final isDirty()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/heyzap/house/cache/Entry;->dirty:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setDirty(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/heyzap/house/cache/Entry;->dirty:Ljava/lang/Boolean;

    .line 32
    return-void
.end method

.method public final setFilename(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/heyzap/house/cache/Entry;->fileName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/heyzap/house/cache/Entry;->identifier:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public final setLastUsed()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heyzap/house/cache/Entry;->lastUsedTime:J

    .line 60
    return-void
.end method

.method public final setLastUsed(J)V
    .locals 0

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/heyzap/house/cache/Entry;->lastUsedTime:J

    .line 56
    return-void
.end method

.method public final touch()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/heyzap/house/cache/Entry;->lastUsedTime:J

    .line 68
    return-void
.end method
