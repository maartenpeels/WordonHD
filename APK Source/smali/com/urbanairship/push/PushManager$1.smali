.class Lcom/urbanairship/push/PushManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/urbanairship/richpush/RichPushManager$RefreshMessagesCallback;


# instance fields
.field final synthetic a:Ljava/util/concurrent/Semaphore;

.field final synthetic b:Lcom/urbanairship/push/PushManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/PushManager;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/push/PushManager$1;->b:Lcom/urbanairship/push/PushManager;

    iput-object p2, p0, Lcom/urbanairship/push/PushManager$1;->a:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/push/PushManager$1;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
