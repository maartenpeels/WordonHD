.class Lcom/urbanairship/richpush/RichPushMessageCache;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/urbanairship/richpush/RichPushMessage;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/urbanairship/richpush/RichPushMessage;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/urbanairship/richpush/RichPushMessage;

    move-object v0, p0

    goto :goto_0
.end method

.method final a(Lcom/urbanairship/richpush/RichPushMessage;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/urbanairship/richpush/RichPushMessageCache;->b(Lcom/urbanairship/richpush/RichPushMessage;)V

    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method final b(Lcom/urbanairship/richpush/RichPushMessage;)V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/urbanairship/richpush/RichPushMessageCache;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
