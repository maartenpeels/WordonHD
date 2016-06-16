.class public Lcom/urbanairship/actions/ActionArguments;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/urbanairship/actions/Situation;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/urbanairship/actions/Situation;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/urbanairship/actions/ActionArguments;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/urbanairship/actions/ActionArguments;->a:Lcom/urbanairship/actions/Situation;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/actions/ActionArguments;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Lcom/urbanairship/actions/Situation;
    .locals 1

    iget-object v0, p0, Lcom/urbanairship/actions/ActionArguments;->a:Lcom/urbanairship/actions/Situation;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActionArguments situation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/urbanairship/actions/ActionArguments;->a:Lcom/urbanairship/actions/Situation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/urbanairship/actions/ActionArguments;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
