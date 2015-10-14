.class public Lcom/urbanairship/actions/tags/RemoveTagsAction;
.super Lcom/urbanairship/actions/tags/BaseTagsAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/actions/tags/BaseTagsAction;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lcom/urbanairship/actions/ActionArguments;)Lcom/urbanairship/actions/ActionResult;
    .locals 3

    invoke-static {p1}, Lcom/urbanairship/actions/tags/RemoveTagsAction;->d(Lcom/urbanairship/actions/ActionArguments;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing tags: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/urbanairship/actions/tags/RemoveTagsAction;->a()Lcom/urbanairship/push/PushManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/urbanairship/push/PushManager;->k()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/urbanairship/actions/tags/RemoveTagsAction;->a()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/PushManager;->a(Ljava/util/Set;)V

    invoke-static {}, Lcom/urbanairship/actions/ActionResult;->a()Lcom/urbanairship/actions/ActionResult;

    move-result-object v0

    return-object v0
.end method
