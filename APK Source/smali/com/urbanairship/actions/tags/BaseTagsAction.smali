.class public abstract Lcom/urbanairship/actions/tags/BaseTagsAction;
.super Lcom/urbanairship/actions/Action;


# instance fields
.field private final a:Lcom/urbanairship/push/PushManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/urbanairship/push/PushManager;->b()Lcom/urbanairship/push/PushManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/urbanairship/actions/tags/BaseTagsAction;-><init>(Lcom/urbanairship/push/PushManager;)V

    return-void
.end method

.method private constructor <init>(Lcom/urbanairship/push/PushManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/urbanairship/actions/Action;-><init>()V

    iput-object p1, p0, Lcom/urbanairship/actions/tags/BaseTagsAction;->a:Lcom/urbanairship/push/PushManager;

    return-void
.end method

.method protected static d(Lcom/urbanairship/actions/ActionArguments;)Ljava/util/Set;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/urbanairship/actions/ActionArguments;->a()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/urbanairship/actions/ActionArguments;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    check-cast v0, Ljava/util/Collection;

    move-object p0, v0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    move-object v1, v3

    goto :goto_0
.end method


# virtual methods
.method protected final a()Lcom/urbanairship/push/PushManager;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/actions/tags/BaseTagsAction;->a:Lcom/urbanairship/push/PushManager;

    return-object v0
.end method

.method public final b(Lcom/urbanairship/actions/ActionArguments;)Z
    .locals 1

    invoke-static {p1}, Lcom/urbanairship/actions/tags/BaseTagsAction;->d(Lcom/urbanairship/actions/ActionArguments;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
