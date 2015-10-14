.class public final Lcom/urbanairship/actions/ActionRegistry;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/urbanairship/actions/ActionRegistry;


# instance fields
.field private a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/urbanairship/actions/ActionRegistry;

    invoke-direct {v0}, Lcom/urbanairship/actions/ActionRegistry;-><init>()V

    sput-object v0, Lcom/urbanairship/actions/ActionRegistry;->b:Lcom/urbanairship/actions/ActionRegistry;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/actions/ActionRegistry;->a:Ljava/util/Map;

    return-void
.end method

.method private varargs a(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string v0, "Unable to register null action"

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    if-eqz p2, :cond_1

    array-length v0, p2

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "A name is required to register an action"

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_2
    array-length v0, p2

    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v2, p2, v1

    invoke-static {v2}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "Unable to register action because one or more of the names was null or empty."

    invoke-static {v0}, Lcom/urbanairship/Logger;->e(Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRegistry;->a:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lcom/urbanairship/actions/ActionRegistry$Entry;

    const/4 v0, 0x0

    invoke-direct {v2, p1, p2, v0}, Lcom/urbanairship/actions/ActionRegistry$Entry;-><init>(Lcom/urbanairship/actions/Action;[Ljava/lang/String;B)V

    array-length v3, p2

    :goto_2
    if-ge v4, v3, :cond_7

    aget-object v5, p2, v4

    invoke-static {v5}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry;->a:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/urbanairship/actions/ActionRegistry$Entry;

    if-eqz v0, :cond_5

    invoke-static {v0, v5}, Lcom/urbanairship/actions/ActionRegistry$Entry;->a(Lcom/urbanairship/actions/ActionRegistry$Entry;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry;->a:Ljava/util/Map;

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Lcom/urbanairship/actions/ActionRegistry;
    .locals 1

    sget-object v0, Lcom/urbanairship/actions/ActionRegistry;->b:Lcom/urbanairship/actions/ActionRegistry;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;
    .locals 2

    invoke-static {p1}, Lcom/urbanairship/util/UAStringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/actions/ActionRegistry;->a:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/actions/ActionRegistry;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/urbanairship/actions/ActionRegistry$Entry;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final b()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/urbanairship/actions/OpenExternalUrlAction;

    invoke-direct {v0}, Lcom/urbanairship/actions/OpenExternalUrlAction;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "open_external_url_action"

    aput-object v2, v1, v4

    const-string v2, "^u"

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/actions/ActionRegistry;->a(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    new-instance v0, Lcom/urbanairship/actions/DeepLinkAction;

    invoke-direct {v0}, Lcom/urbanairship/actions/DeepLinkAction;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "deep_link_action"

    aput-object v2, v1, v4

    const-string v2, "^d"

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/actions/ActionRegistry;->a(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    new-instance v0, Lcom/urbanairship/actions/LandingPageAction;

    invoke-direct {v0}, Lcom/urbanairship/actions/LandingPageAction;-><init>()V

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "landing_page_action"

    aput-object v2, v1, v4

    const-string v2, "^p"

    aput-object v2, v1, v5

    invoke-direct {p0, v0, v1}, Lcom/urbanairship/actions/ActionRegistry;->a(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v0

    new-instance v1, Lcom/urbanairship/actions/ActionRegistry$1;

    invoke-direct {v1, p0}, Lcom/urbanairship/actions/ActionRegistry$1;-><init>(Lcom/urbanairship/actions/ActionRegistry;)V

    invoke-virtual {v0, v1}, Lcom/urbanairship/actions/ActionRegistry$Entry;->a(Lcom/android/internal/util/Predicate;)V

    new-instance v0, Lcom/urbanairship/actions/ActionRegistry$2;

    invoke-direct {v0, p0}, Lcom/urbanairship/actions/ActionRegistry$2;-><init>(Lcom/urbanairship/actions/ActionRegistry;)V

    new-instance v1, Lcom/urbanairship/actions/tags/AddTagsAction;

    invoke-direct {v1}, Lcom/urbanairship/actions/tags/AddTagsAction;-><init>()V

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "add_tags_action"

    aput-object v3, v2, v4

    const-string v3, "^+t"

    aput-object v3, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/urbanairship/actions/ActionRegistry;->a(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/actions/ActionRegistry$Entry;->a(Lcom/android/internal/util/Predicate;)V

    new-instance v1, Lcom/urbanairship/actions/tags/RemoveTagsAction;

    invoke-direct {v1}, Lcom/urbanairship/actions/tags/RemoveTagsAction;-><init>()V

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "remove_tags_action"

    aput-object v3, v2, v4

    const-string v3, "^-t"

    aput-object v3, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/urbanairship/actions/ActionRegistry;->a(Lcom/urbanairship/actions/Action;[Ljava/lang/String;)Lcom/urbanairship/actions/ActionRegistry$Entry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/urbanairship/actions/ActionRegistry$Entry;->a(Lcom/android/internal/util/Predicate;)V

    return-void
.end method
