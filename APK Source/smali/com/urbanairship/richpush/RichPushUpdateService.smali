.class public Lcom/urbanairship/richpush/RichPushUpdateService;
.super Landroid/app/IntentService;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "RichPushUpdateService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/urbanairship/restclient/Response;
    .locals 3

    invoke-static {}, Lcom/urbanairship/richpush/RichPushUser;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/urbanairship/richpush/RichPushUserAuthenticatedRequest;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/richpush/RichPushUserAuthenticatedRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/urbanairship/restclient/Request;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/restclient/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/urbanairship/restclient/Request;->a()Lcom/urbanairship/restclient/Response;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Lcom/urbanairship/restclient/AppAuthenticatedRequest;

    invoke-direct {v0, p0, p1}, Lcom/urbanairship/restclient/AppAuthenticatedRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-object v1, v1, Lcom/urbanairship/AirshipConfigOptions;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)Ljava/util/Set;
    .locals 4

    const/4 v3, -0x1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    move v1, v3

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne v1, v3, :cond_1

    const-string v1, "message_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    :cond_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Set;)Lorg/apache/http/HttpEntity;
    .locals 7

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->a()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUser;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "api/user/%s/messages/message/%s/"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    :goto_2
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Landroid/os/ResultReceiver;Z)V
    .locals 2

    if-eqz p0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static a()Z
    .locals 7

    const/4 v6, 0x0

    const-string v0, "Creating user"

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "POST"

    invoke-static {}, Lcom/urbanairship/richpush/RichPushUser;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/urbanairship/push/PushManager;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v4, "apids"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-static {v0, v1, v2}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/urbanairship/restclient/Response;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "User creation failed. No network response."

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    move v0, v6

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->a()I

    move-result v1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_2

    const-string v1, "User creation succeeded. Updating"

    invoke-static {v1}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushUser;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "User creation failed. Logging."

    invoke-static {v1}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception constructing JSON data when creating user."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move v0, v6

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Error creating user."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static b()Z
    .locals 8

    const/4 v7, 0x0

    const-string v0, "Updating user"

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "No APID. Skipping user update."

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    move v0, v7

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v0, "POST"

    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->a()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushUser;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/urbanairship/push/PushManager;->j()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v6, "add"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "apids"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-static {v0, v1, v2}, Lcom/urbanairship/richpush/RichPushUpdateService;->b(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "User update failed. Will retry later."

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v7

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception constructing JSON data when updating user."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move v0, v7

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Error updating user."

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Z
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/urbanairship/restclient/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The response status is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x0

    const-string v0, "Updating Messages"

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/richpush/RichPushUpdateService;->d()[Landroid/content/ContentValues;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, v0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    const-string v6, "message_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/urbanairship/richpush/RichPushManager;->a:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v7, v6, v5}, Lcom/urbanairship/richpush/RichPushResolver;->a(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v6

    if-eq v6, v8, :cond_1

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    sget-object v1, Lcom/urbanairship/richpush/RichPushManager;->a:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/RichPushResolver;->a([Landroid/content/ContentValues;)I

    :cond_3
    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->a:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushResolver;->a()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Landroid/database/Cursor;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->a()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/richpush/RichPushUser;->d()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/RichPushInbox;->a(Ljava/util/Set;)V

    :cond_4
    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->a()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUser;->d()Lcom/urbanairship/richpush/RichPushInbox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushInbox;->b()V

    move v0, v8

    goto :goto_0
.end method

.method private static d()[Landroid/content/ContentValues;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    const-string v0, "message_expiry"

    const-string v0, "message_body_url"

    const-string v0, "extra"

    const-string v0, "GET"

    const-string v1, "api/user/%s/messages/"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->a()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushUser;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Lcom/urbanairship/restclient/Response;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "The response from the server was null. Will try later."

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "messages"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v2, v1, [Landroid/content/ContentValues;

    move v3, v4

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "timestamp"

    const-string v7, "message_sent"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "message_id"

    const-string v7, "message_id"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "message_url"

    const-string v7, "message_url"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "message_body_url"

    const-string v7, "message_body_url"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "message_read_url"

    const-string v7, "message_read_url"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "title"

    const-string v7, "title"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "unread_orig"

    const-string v7, "unread"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v6, "extra"

    const-string v7, "extra"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "raw_message_object"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "message_expiry"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "expiration_timestamp"

    const-string v7, "message_expiry"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    aput-object v5, v2, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_2
    move-object v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to parse message list response from server"

    invoke-static {v1, v0}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v8

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    invoke-virtual {p0}, Lcom/urbanairship/richpush/RichPushUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/urbanairship/Autopilot;->b(Landroid/app/Application;)V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "POST"

    const-string v6, "Found "

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.urbanairship.richpush.RESULT_RECEIVER"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/ResultReceiver;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting RichPushUpdateService with action "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    const-string v1, "com.urbanairship.richpush.MESSAGES_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/urbanairship/richpush/RichPushUser;->a()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "The Rich Push user has not been created, cancelling messages update"

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Landroid/os/ResultReceiver;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/urbanairship/richpush/RichPushUpdateService;->c()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Landroid/os/ResultReceiver;Z)V

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->a:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushResolver;->b()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Landroid/database/Cursor;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messages to mark read."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    const-string v1, "POST"

    const-string v1, "api/user/%s/messages/unread/"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->a()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushUser;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mark_as_read"

    invoke-static {v2, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Ljava/lang/String;Ljava/util/Set;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/urbanairship/richpush/RichPushUpdateService;->b(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "unread_orig"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/urbanairship/richpush/RichPushManager;->a:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v2, v0, v1}, Lcom/urbanairship/richpush/RichPushResolver;->a(Ljava/util/Set;Landroid/content/ContentValues;)I

    :cond_3
    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->a:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushResolver;->c()Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Landroid/database/Cursor;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messages to delete."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->b(Ljava/lang/String;)V

    const-string v1, "POST"

    const-string v1, "api/user/%s/messages/delete/"

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->a()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/urbanairship/richpush/RichPushUser;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delete"

    invoke-static {v2, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Ljava/lang/String;Ljava/util/Set;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v7, v1, v2}, Lcom/urbanairship/richpush/RichPushUpdateService;->b(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/urbanairship/richpush/RichPushManager;->a:Lcom/urbanairship/richpush/RichPushResolver;

    invoke-virtual {v1, v0}, Lcom/urbanairship/richpush/RichPushResolver;->d(Ljava/util/Set;)I

    goto/16 :goto_0

    :cond_4
    const-string v1, "com.urbanairship.richpush.USER_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/urbanairship/richpush/RichPushUser;->a()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/urbanairship/richpush/RichPushUpdateService;->a()Z

    move-result v0

    :goto_1
    invoke-static {p0, v0}, Lcom/urbanairship/richpush/RichPushUpdateService;->a(Landroid/os/ResultReceiver;Z)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/urbanairship/richpush/RichPushUpdateService;->b()Z

    move-result v0

    goto :goto_1
.end method
