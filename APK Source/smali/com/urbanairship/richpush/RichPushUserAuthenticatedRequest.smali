.class public Lcom/urbanairship/richpush/RichPushUserAuthenticatedRequest;
.super Lcom/urbanairship/restclient/Request;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/urbanairship/restclient/Request;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/urbanairship/richpush/RichPushManager;->a()Lcom/urbanairship/richpush/RichPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushManager;->b()Lcom/urbanairship/richpush/RichPushUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUser;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/urbanairship/richpush/RichPushUser;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/urbanairship/richpush/RichPushUserAuthenticatedRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
