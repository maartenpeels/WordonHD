.class Lcom/urbanairship/richpush/RichPushInbox$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/urbanairship/richpush/RichPushInbox;


# direct methods
.method constructor <init>(Lcom/urbanairship/richpush/RichPushInbox;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushInbox$3;->b:Lcom/urbanairship/richpush/RichPushInbox;

    iput-object p2, p0, Lcom/urbanairship/richpush/RichPushInbox$3;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/urbanairship/richpush/RichPushManager;->a:Lcom/urbanairship/richpush/RichPushResolver;

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox$3;->a:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/urbanairship/richpush/RichPushResolver;->c(Ljava/util/Set;)I

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushInbox$3;->b:Lcom/urbanairship/richpush/RichPushInbox;

    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushInbox;->a(Lcom/urbanairship/richpush/RichPushInbox;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/richpush/RichPushInbox$3;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method
