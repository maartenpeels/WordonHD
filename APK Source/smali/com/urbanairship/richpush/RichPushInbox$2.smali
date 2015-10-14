.class Lcom/urbanairship/richpush/RichPushInbox$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Set;


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->a:Lcom/urbanairship/richpush/RichPushResolver;

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox$2;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/urbanairship/richpush/RichPushResolver;->b(Ljava/util/Set;)I

    return-void
.end method
