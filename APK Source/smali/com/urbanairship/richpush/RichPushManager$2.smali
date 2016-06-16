.class Lcom/urbanairship/richpush/RichPushManager$2;
.super Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;

.field final synthetic c:Lcom/urbanairship/richpush/RichPushManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/richpush/RichPushManager;ILcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/richpush/RichPushManager$2;->c:Lcom/urbanairship/richpush/RichPushManager;

    iput p2, p0, Lcom/urbanairship/richpush/RichPushManager$2;->a:I

    iput-object p3, p0, Lcom/urbanairship/richpush/RichPushManager$2;->b:Lcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;

    invoke-direct {p0}, Lcom/urbanairship/richpush/RichPushManager$UpdateResultReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager$2;->c:Lcom/urbanairship/richpush/RichPushManager;

    invoke-static {v0}, Lcom/urbanairship/richpush/RichPushManager;->a(Lcom/urbanairship/richpush/RichPushManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    iget v1, p0, Lcom/urbanairship/richpush/RichPushManager$2;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager$2;->c:Lcom/urbanairship/richpush/RichPushManager;

    invoke-static {v0, p1}, Lcom/urbanairship/richpush/RichPushManager;->a(Lcom/urbanairship/richpush/RichPushManager;Z)V

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager$2;->b:Lcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushManager$2;->b:Lcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;

    invoke-interface {v0}, Lcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;->a()V

    :cond_1
    return-void
.end method
