.class Lcom/urbanairship/actions/ActionRegistry$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/Predicate;


# instance fields
.field final synthetic a:Lcom/urbanairship/actions/ActionRegistry;


# direct methods
.method constructor <init>(Lcom/urbanairship/actions/ActionRegistry;)V
    .locals 0

    iput-object p1, p0, Lcom/urbanairship/actions/ActionRegistry$2;->a:Lcom/urbanairship/actions/ActionRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Lcom/urbanairship/actions/ActionArguments;

    sget-object v0, Lcom/urbanairship/actions/Situation;->b:Lcom/urbanairship/actions/Situation;

    invoke-virtual {p1}, Lcom/urbanairship/actions/ActionArguments;->b()Lcom/urbanairship/actions/Situation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/actions/Situation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
