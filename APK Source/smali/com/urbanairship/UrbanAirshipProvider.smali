.class public Lcom/urbanairship/UrbanAirshipProvider;
.super Landroid/content/ContentProvider;


# static fields
.field private static final a:Landroid/content/UriMatcher;

.field private static d:Ljava/lang/String;


# instance fields
.field private b:Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

.field private c:Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/urbanairship/UrbanAirshipProvider;->a:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 4

    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->a:Landroid/content/UriMatcher;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "richpush"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->a:Landroid/content/UriMatcher;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "richpush/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->a:Landroid/content/UriMatcher;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preferences"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->a:Landroid/content/UriMatcher;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "preferences/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public static b()Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/richpush"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;
    .locals 3

    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid URI: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/urbanairship/UrbanAirshipProvider;->f()Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lcom/urbanairship/UrbanAirshipProvider;->e()Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static c()Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".urbanairship.provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/urbanairship/UrbanAirshipProvider;->d:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->d:Ljava/lang/String;

    return-object v0
.end method

.method private e()Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->c:Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->b(Landroid/content/Context;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->c:Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->c:Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    return-object v0
.end method

.method private f()Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->b:Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->a(Landroid/content/Context;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    move-result-object v0

    iput-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->b:Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider;->b:Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    return-object v0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6

    invoke-direct {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider;->b(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    move-result-object v1

    iget-object v0, v1, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->a:Lcom/urbanairship/util/DataManager;

    iget-object v2, v1, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Lcom/urbanairship/util/DataManager;->a(Ljava/lang/String;[Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    array-length v0, v3

    if-ge v4, v0, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iget-object v5, v1, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->d:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "insert"

    invoke-virtual {v1, v0, v3, v4}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    invoke-direct {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider;->b(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    move-result-object v0

    iget-object v1, v0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->a:Lcom/urbanairship/util/DataManager;

    iget-object v2, v0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3}, Lcom/urbanairship/util/DataManager;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Lcom/urbanairship/UrbanAirshipProvider;->a(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "delete"

    invoke-virtual {v0, v2, v3, v4}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/urbanairship/UrbanAirshipProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "vnd.urbanairship.cursor.dir/richpush"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "vnd.urbanairship.cursor.item/richpush"

    goto :goto_0

    :pswitch_2
    const-string v0, "vnd.urbanairship.cursor.dir/preference"

    goto :goto_0

    :pswitch_3
    const-string v0, "vnd.urbanairship.cursor.item/preference"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    invoke-direct {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider;->b(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    move-result-object v0

    iget-object v1, v0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->a:Lcom/urbanairship/util/DataManager;

    iget-object v2, v0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/urbanairship/util/DataManager;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->d:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v4, "insert"

    invoke-virtual {v0, v2, v3, v4}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    invoke-direct {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider;->b(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    move-result-object v1

    iget-object v0, v1, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->a:Lcom/urbanairship/util/DataManager;

    iget-object v1, v1, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->b:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/urbanairship/util/DataManager;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_0
    return-object v0
.end method

.method public shutdown()V
    .locals 1

    invoke-direct {p0}, Lcom/urbanairship/UrbanAirshipProvider;->f()Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->a:Lcom/urbanairship/util/DataManager;

    invoke-virtual {v0}, Lcom/urbanairship/util/DataManager;->d()V

    invoke-direct {p0}, Lcom/urbanairship/UrbanAirshipProvider;->e()Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    move-result-object v0

    iget-object v0, v0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->a:Lcom/urbanairship/util/DataManager;

    invoke-virtual {v0}, Lcom/urbanairship/util/DataManager;->d()V

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    invoke-direct {p0, p1}, Lcom/urbanairship/UrbanAirshipProvider;->b(Landroid/net/Uri;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    move-result-object v0

    iget-object v1, v0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->a:Lcom/urbanairship/util/DataManager;

    iget-object v2, v0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/urbanairship/util/DataManager;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/urbanairship/UrbanAirshipProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1}, Lcom/urbanairship/UrbanAirshipProvider;->a(Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "update"

    invoke-virtual {v0, v2, v3, v4}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1
.end method
