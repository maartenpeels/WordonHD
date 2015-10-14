.class Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/urbanairship/util/DataManager;

.field b:Ljava/lang/String;

.field c:Landroid/net/Uri;

.field d:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/urbanairship/util/DataManager;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->a:Lcom/urbanairship/util/DataManager;

    iput-object p2, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->c:Landroid/net/Uri;

    iput-object p4, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->d:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/content/Context;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;
    .locals 5

    new-instance v0, Lcom/urbanairship/RichPushDataManager;

    invoke-direct {v0, p0}, Lcom/urbanairship/RichPushDataManager;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    const-string v2, "richpush"

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->b()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "message_id"

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;-><init>(Lcom/urbanairship/util/DataManager;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v1
.end method

.method static b(Landroid/content/Context;)Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;
    .locals 5

    new-instance v0, Lcom/urbanairship/PreferencesDataManager;

    invoke-direct {v0, p0}, Lcom/urbanairship/PreferencesDataManager;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;

    const-string v2, "preferences"

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->c()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "_id"

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;-><init>(Lcom/urbanairship/util/DataManager;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method final a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/urbanairship/UrbanAirshipProvider$DatabaseModel;->c:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "|"

    invoke-static {v2, v3}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Notifying of change to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method
