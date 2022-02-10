part of 'widgets.dart';

class CardUsulanWidget extends StatefulWidget {
  final ProposalModel? proposalModel;
  const CardUsulanWidget({this.proposalModel, Key? key}) : super(key: key);

  @override
  State<CardUsulanWidget> createState() => _CardUsulanWidgetState();
}

class _CardUsulanWidgetState extends State<CardUsulanWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.only(
          top: 16,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: greySecondaryColor),
            borderRadius: BorderRadius.circular(8),
            color: greySecondaryColor.withOpacity(0.2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.proposalModel!.tema!,
                  style: boldFontStyle.copyWith(fontSize: 16),
                ),
                const Icon(Icons.keyboard_arrow_right_outlined)
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.proposalModel!.nameOrmawa!,
              style: regulerFontStyle,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              DateFormat('E')
                      .format(DateTime.parse(widget.proposalModel!.date!)) +
                  ', ${widget.proposalModel!.date} | ' +
                  widget.proposalModel!.time!,
              style: mediumFontStyle.copyWith(color: greyColor),
              textAlign: TextAlign.right,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "Usulan dibuat : " + widget.proposalModel!.createddatetime!,
              style: regulerFontStyle,
            ),
          ],
        ));
  }
}
