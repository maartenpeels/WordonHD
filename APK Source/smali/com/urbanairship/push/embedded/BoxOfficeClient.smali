.class public Lcom/urbanairship/push/embedded/BoxOfficeClient;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android-lib-"

    sput-object v0, Lcom/urbanairship/push/embedded/BoxOfficeClient;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const-string v4, "com.urbanairship.preferences.apid"

    const-string v0, "Performing BoxOffice firstRun."

    invoke-static {v0}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushManager;->g()Lcom/urbanairship/push/PushPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/push/PushPreferences;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v0, v1

    :cond_0
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "package"

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "apid"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/urbanairship/restclient/Request;

    const-string v2, "POST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/urbanairship/push/embedded/Config$BoxOffice;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/firstrun"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/urbanairship/restclient/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/urbanairship/restclient/Request;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "X-UA-Device-Family"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-UA-Device-Model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-UA-OS-Version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-UA-Lib-Version"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/urbanairship/push/embedded/BoxOfficeClient;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/urbanairship/UAirship;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-UA-Package-Name"

    invoke-static {}, Lcom/urbanairship/UAirship;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-UA-Transport"

    const-string v2, "GCM"

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0.000"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "X-UA-Sent-At"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-UA-App-Key"

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/urbanairship/AirshipConfigOptions;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v1

    iget-boolean v1, v1, Lcom/urbanairship/AirshipConfigOptions;->m:Z

    if-eqz v1, :cond_1

    const-string v1, "X-UA-Device-ID"

    invoke-static {}, Lcom/urbanairship/util/Device;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/urbanairship/restclient/Request;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/urbanairship/restclient/Request;->a()Lcom/urbanairship/restclient/Response;

    move-result-object v0

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->g()Lcom/urbanairship/push/PushPreferences;

    move-result-object v1

    if-nez v0, :cond_5

    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v1, "Failed to post to /firstrun; request failed"

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "com.urbanairship.preferences.apid"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushPreferences;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Restored APID: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from shared preferences."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generating APID: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->g()Lcom/urbanairship/push/PushPreferences;

    move-result-object v1

    invoke-static {}, Lcom/urbanairship/push/embedded/BoxOfficeClient;->b()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "com.urbanairship.preferences.apid"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/PushPreferences;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v1, "The APID was invalid or failed to save."

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v1, "Failed to post to /firstrun; UTF-8 unsupported!"

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->a()I

    move-result v2

    const/16 v3, 0x199

    if-ne v2, v3, :cond_6

    invoke-virtual {v1, v7}, Lcom/urbanairship/push/PushPreferences;->b(Ljava/lang/String;)Z

    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v1, "Unrecoverable firstrun state. Clearing APID."

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/16 v3, 0x193

    if-ne v2, v3, :cond_7

    new-instance v1, Lcom/urbanairship/push/embedded/BoxOfficeClient$FirstRunForbiddenException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to post to firstrun; forbidden. Reason:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/urbanairship/push/embedded/BoxOfficeClient$FirstRunForbiddenException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_9

    invoke-virtual {v0}, Lcom/urbanairship/restclient/Response;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/urbanairship/push/PushPreferences;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    :cond_8
    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    const-string v1, "Failed to post to /firstrun; The secret was invalid or failed to save."

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to post to /firstrun: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Check your airship configuration, particularly your app key and secret."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/urbanairship/push/embedded/BoxOfficeClient$BoxOfficeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b()Landroid/content/SharedPreferences;
    .locals 3

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->g()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.urbanairship.preferences"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
