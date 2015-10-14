.class public final Lcom/urbanairship/actions/ActionRegistry$Entry;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;

.field private b:Lcom/urbanairship/actions/Action;

.field private c:Lcom/android/internal/util/Predicate;

.field private d:Ljava/util/Map;


# direct methods
.method private constructor <init>(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->d:Ljava/util/Map;

    iput-object p1, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->b:Lcom/urbanairship/actions/Action;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/urbanairship/actions/Action;[Ljava/lang/String;B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/urbanairship/actions/ActionRegistry$Entry;-><init>(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/urbanairship/actions/ActionRegistry$Entry;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->a:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a()Lcom/android/internal/util/Predicate;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->c:Lcom/android/internal/util/Predicate;

    return-object v0
.end method

.method public final a(Lcom/urbanairship/actions/Situation;)Lcom/urbanairship/actions/Action;
    .locals 1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->b:Lcom/urbanairship/actions/Action;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/actions/Action;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->b:Lcom/urbanairship/actions/Action;

    goto :goto_0
.end method

.method public final a(Lcom/android/internal/util/Predicate;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->c:Lcom/android/internal/util/Predicate;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Action Entry: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/actions/ActionRegistry$Entry;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
