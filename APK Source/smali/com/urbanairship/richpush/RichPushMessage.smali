.class public Lcom/urbanairship/richpush/RichPushMessage;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field static final a:Ljava/text/SimpleDateFormat;


# instance fields
.field b:Z

.field c:Z

.field d:Z

.field e:Landroid/os/Bundle;

.field f:J

.field g:Ljava/lang/Long;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/urbanairship/richpush/RichPushMessage;->a:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->b:Z

    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushMessage;->h:Ljava/lang/String;

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static a(Landroid/database/Cursor;)Lcom/urbanairship/richpush/RichPushMessage;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/urbanairship/richpush/RichPushMessage;

    const-string v1, "message_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/richpush/RichPushMessage;-><init>(Ljava/lang/String;)V

    const-string v1, "message_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->i:Ljava/lang/String;

    const-string v1, "message_body_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->j:Ljava/lang/String;

    const-string v1, "message_read_url"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->k:Ljava/lang/String;

    const-string v1, "unread"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->c:Z

    const-string v1, "unread_orig"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v4, :cond_1

    move v1, v4

    :goto_1
    iput-boolean v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->d:Z

    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "extra"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/urbanairship/richpush/RichPushMessage;->a(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->e:Landroid/os/Bundle;

    const-string v1, "title"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->l:Ljava/lang/String;

    const-string v1, "timestamp"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/urbanairship/richpush/RichPushMessage;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->f:J

    const-string v1, "deleted"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v4, :cond_2

    move v1, v4

    :goto_2
    iput-boolean v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->b:Z

    const-string v1, "raw_message_object"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_3
    iput-object v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->m:Lorg/json/JSONObject;

    const-string v1, "expiration_timestamp"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/urbanairship/richpush/RichPushMessage;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/urbanairship/richpush/RichPushMessage;->g:Ljava/lang/Long;

    return-object v0

    :cond_0
    move v1, v5

    goto/16 :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_2

    :cond_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/urbanairship/richpush/RichPushMessage;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t parse message date: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", defaulting to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->f:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/urbanairship/richpush/RichPushMessage;

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/urbanairship/richpush/RichPushMessage;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->g:Ljava/lang/Long;

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/urbanairship/richpush/RichPushMessage;->g:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->b:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/urbanairship/richpush/RichPushMessage;

    if-nez v0, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/urbanairship/richpush/RichPushMessage;

    if-ne p0, p1, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/urbanairship/richpush/RichPushMessage;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/urbanairship/richpush/RichPushMessage;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/urbanairship/richpush/RichPushMessage;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/urbanairship/richpush/RichPushMessage;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/urbanairship/richpush/RichPushMessage;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/urbanairship/richpush/RichPushMessage;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/urbanairship/richpush/RichPushMessage;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/urbanairship/richpush/RichPushMessage;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->e:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/urbanairship/richpush/RichPushMessage;->e:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/urbanairship/richpush/RichPushMessage;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->c:Z

    iget-boolean v1, p1, Lcom/urbanairship/richpush/RichPushMessage;->c:Z

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->f:J

    iget-wide v2, p1, Lcom/urbanairship/richpush/RichPushMessage;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/urbanairship/richpush/RichPushMessage;->c:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-boolean v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->b:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushMessage;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method
