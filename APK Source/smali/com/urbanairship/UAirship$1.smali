.class Lcom/urbanairship/UAirship$1;
.super Ljava/util/HashMap;


# instance fields
.field final synthetic a:Lcom/urbanairship/UAirship;


# direct methods
.method constructor <init>(Lcom/urbanairship/UAirship;)V
    .locals 6

    const-class v5, Lcom/urbanairship/location/LocationService;

    const-class v1, Lcom/urbanairship/analytics/EventService;

    const-class v4, Lcom/urbanairship/actions/ActionService;

    const-class v3, Lcom/urbanairship/actions/ActionActivity;

    const-class v2, Lcom/urbanairship/CoreReceiver;

    iput-object p1, p0, Lcom/urbanairship/UAirship$1;->a:Lcom/urbanairship/UAirship;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-class v0, Lcom/urbanairship/analytics/EventService;

    const-class v0, Lcom/urbanairship/analytics/EventService;

    invoke-static {v1}, Lcom/urbanairship/util/ManifestUtils;->a(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/UAirship$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/urbanairship/push/PushService;

    const-class v1, Lcom/urbanairship/push/PushService;

    invoke-static {v1}, Lcom/urbanairship/util/ManifestUtils;->a(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/UAirship$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/urbanairship/richpush/RichPushUpdateService;

    const-class v1, Lcom/urbanairship/richpush/RichPushUpdateService;

    invoke-static {v1}, Lcom/urbanairship/util/ManifestUtils;->a(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/UAirship$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/urbanairship/location/LocationService;

    const-class v0, Lcom/urbanairship/location/LocationService;

    invoke-static {v5}, Lcom/urbanairship/util/ManifestUtils;->a(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/urbanairship/UAirship$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/urbanairship/actions/ActionService;

    const-class v0, Lcom/urbanairship/actions/ActionService;

    invoke-static {v4}, Lcom/urbanairship/util/ManifestUtils;->a(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/urbanairship/UAirship$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/urbanairship/CoreReceiver;

    const-class v0, Lcom/urbanairship/CoreReceiver;

    invoke-static {v2}, Lcom/urbanairship/util/ManifestUtils;->c(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/urbanairship/UAirship$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/urbanairship/push/GCMPushReceiver;

    const-class v1, Lcom/urbanairship/push/GCMPushReceiver;

    invoke-static {v1}, Lcom/urbanairship/util/ManifestUtils;->c(Ljava/lang/Class;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/UAirship$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/urbanairship/UrbanAirshipProvider;

    invoke-static {}, Lcom/urbanairship/UrbanAirshipProvider;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/util/ManifestUtils;->b(Ljava/lang/String;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/urbanairship/UAirship$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/urbanairship/actions/ActionActivity;

    const-class v0, Lcom/urbanairship/actions/ActionActivity;

    invoke-static {v3}, Lcom/urbanairship/util/ManifestUtils;->b(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/urbanairship/UAirship$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
