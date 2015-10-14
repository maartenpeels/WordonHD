.class public Lcom/urbanairship/push/PushRegistrationPayload;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/urbanairship/push/PushRegistrationPayload;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/urbanairship/push/PushRegistrationPayload;->c:Ljava/util/Set;

    iput-object p2, p0, Lcom/urbanairship/push/PushRegistrationPayload;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "alias"

    iget-object v2, p0, Lcom/urbanairship/push/PushRegistrationPayload;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/urbanairship/push/PushRegistrationPayload;->c:Ljava/util/Set;

    if-eqz v1, :cond_0

    const-string v1, "tags"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/urbanairship/push/PushRegistrationPayload;->c:Ljava/util/Set;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "gcm_registration_id"

    iget-object v2, p0, Lcom/urbanairship/push/PushRegistrationPayload;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
