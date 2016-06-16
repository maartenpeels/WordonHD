.class public Lcom/urbanairship/restclient/AppAuthenticatedRequest;
.super Lcom/urbanairship/restclient/Request;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/urbanairship/restclient/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/UAirship;->a()Lcom/urbanairship/UAirship;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/UAirship;->h()Lcom/urbanairship/AirshipConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/AirshipConfigOptions;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/restclient/AppAuthenticatedRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
