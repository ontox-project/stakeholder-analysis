#' @export
plot_polar <- function(df, title, ...){

  df |>
    group_by(question, cluster_name, cluster_id) |>
    summarise(
      median_score = median(score, na.rm = TRUE),
      sd = sd(score, na.rm = TRUE)) |>
    ggplot(
      aes(
        x = reorder(as_factor(question), cluster_id),
        y = median_score)
    ) +
    geom_bar(
      aes(
        fill = cluster_name),
      stat="identity",
      color="black",
      position = "dodge", ...) +
    geom_errorbar(
      aes(ymin=median_score-sd,
          ymax=median_score+sd),
      width=.2,
      position=position_dodge(.9)) +
    xlab("Question number") +
    ylab(NULL) +
    toolboxr::rotate_axis_labels("x", 90) +
    ggtitle(title) -> p

  p

  p +
    coord_polar() +
    theme_minimal() +
    # Remove legend, axes, text, and tick marks
    theme(
      # legend.position = "none",
      axis.title.x = element_blank(),
      axis.title.y = element_blank(),
      axis.ticks = element_blank(),
      axis.text.y = element_blank(),
      axis.text.x = element_text(face = "bold"),
      plot.title = element_text(size = 24, face = "bold"),
      plot.subtitle = element_text(size = 12)
    ) -> pp

  return(pp)

}
