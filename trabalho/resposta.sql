/*Selecione o nome dos pacientes que foram atendidos no dia 09/02/2015, mostre o nome dos remedios se foram prescritos*/

select nome_paciente, nome_medicamento
from paciente p left join consulta c on p.ID_PACIENTE = c.ID_PACIENTE left join prescricao pr on c.ID_CONSULTA = pr.ID_CONSULTA
left join medicamento m on pr.ID_MEDICAMENTO = m.ID_MEDICAMENTO
where DATA_CONSULTA = "2015-02-09";

