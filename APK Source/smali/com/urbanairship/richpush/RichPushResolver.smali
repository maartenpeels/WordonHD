.class Lcom/urbanairship/richpush/RichPushResolver;
.super Lcom/urbanairship/UrbanAirshipResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/urbanairship/UrbanAirshipResolver;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Ljava/util/Collection;)Landroid/net/Uri;
    .locals 2

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->b()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "|"

    invoke-static {p0, v1}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 4

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "message_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/urbanairship/richpush/RichPushResolver;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method final a(Ljava/util/Set;)I
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "unread"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/richpush/RichPushResolver;->a(Ljava/util/Set;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method final a(Ljava/util/Set;Landroid/content/ContentValues;)I
    .locals 5

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {p1}, Lcom/urbanairship/richpush/RichPushResolver;->a(Ljava/util/Collection;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message_id IN ( "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    const-string v4, ", "

    invoke-static {v3, v0, v4}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, p2, v2, v0}, Lcom/urbanairship/richpush/RichPushResolver;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method final a([Landroid/content/ContentValues;)I
    .locals 1

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/urbanairship/richpush/RichPushResolver;->a(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method final a()Landroid/database/Cursor;
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->b()Landroid/net/Uri;

    move-result-object v1

    const-string v5, "timestamp DESC"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/urbanairship/richpush/RichPushResolver;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/util/Set;)I
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "unread"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/richpush/RichPushResolver;->a(Ljava/util/Set;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method final b()Landroid/database/Cursor;
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->b()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "unread = ? AND unread <> unread_orig"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "0"

    aput-object v5, v4, v0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/urbanairship/richpush/RichPushResolver;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method final c(Ljava/util/Set;)I
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "deleted"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0, p1, v0}, Lcom/urbanairship/richpush/RichPushResolver;->a(Ljava/util/Set;Landroid/content/ContentValues;)I

    move-result v0

    return v0
.end method

.method final c()Landroid/database/Cursor;
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->b()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "deleted = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "1"

    aput-object v5, v4, v0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/urbanairship/richpush/RichPushResolver;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method final d(Ljava/util/Set;)I
    .locals 5

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {p1}, Lcom/urbanairship/richpush/RichPushResolver;->a(Ljava/util/Collection;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message_id IN ( "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?"

    const-string v4, ", "

    invoke-static {v3, v0, v4}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0}, Lcom/urbanairship/richpush/RichPushResolver;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
