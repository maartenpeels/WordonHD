.class Lcom/urbanairship/richpush/RichPushInbox$SentAtRichPushMessageComparator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/urbanairship/richpush/RichPushMessage;

    check-cast p2, Lcom/urbanairship/richpush/RichPushMessage;

    invoke-virtual {p2}, Lcom/urbanairship/richpush/RichPushMessage;->c()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/richpush/RichPushMessage;->c()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method
